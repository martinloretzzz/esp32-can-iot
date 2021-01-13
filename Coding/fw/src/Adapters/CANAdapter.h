/***************************************************************************************************
  (c) NewTec GmbH 2020   -   www.newtec.de
  $URL: https://github.com/NewTec-GmbH/esp32-can-iot $
***************************************************************************************************/
/**
@addtogroup Adapters
@{
@file       CANAdapter.h

ESP32SJA1000 Adapter for Lawicel Protocol

* @}
***************************************************************************************************/
#ifndef CAN_ADAPTER_H
#define CAN_ADAPTER_H

/* INCLUDES ***************************************************************************************/
#include "CANInterface.h"
#include <CAN.h>

#define REG_BASE 0x3ff6b000

#define REG_MOD 0x00
#define REG_CMR 0x01
#define REG_SR 0x02
#define REG_IR 0x03
#define REG_IER 0x04

#define REG_BTR0 0x06
#define REG_BTR1 0x07
#define REG_OCR 0x08

#define REG_ALC 0x0b
#define REG_ECC 0x0c
#define REG_EWLR 0x0d
#define REG_RXERR 0x0e
#define REG_TXERR 0x0f
#define REG_SFF 0x10
#define REG_EFF 0x10
#define REG_ACRn(n) (0x10 + n)
#define REG_AMRn(n) (0x14 + n)

#define REG_CDR 0x1F

/* C-Interface ************************************************************************************/
extern "C"
{
}

/* FORWARD DECLARATIONS ***************************************************************************/

/**
*  ESP-32 Adapter as implementation of CANInterface for the Lawicel Protocol.
*/
class CANAdapter : public CANInterface
{
public:
    /* CONSTANTS ******************************************************************************/

    /* TYPES **********************************************************************************/

    /**
    * Default constructor creates instance of the class using default values.
    * Uses CANInterface constructor as its the implementation of an Interface.
    * @param m_baudrate         Defines the Default baudrate of the CAN Channel
    */
    CANAdapter() : CANInterface(),
                   m_baudRate(500000),
                   m_currentState(CLOSED),
                   m_Can_Controller(CAN)
    {
    }

    /**
    * Default destructor deletes instance of the class.
    */
    ~CANAdapter()
    {
    }

    /** 
    * Configures and starts the CAN Controller to use the user values.
    * @return isError = 0 for OK, 1 for Error 
    */
    bool begin()
    {
        bool success = true;
        m_Can_Controller.setPins(5, 4);
        if (m_Can_Controller.begin(m_baudRate) == 0) /**< Starts CAN channel with 500kbps Baudrate */
        {
            success = false;
        }
        else
        {
            m_Can_Controller.filter(0x7DF);
            m_Can_Controller.sleep();
        }

        return success;
    }

    /** 
    * Stops the Controller Module without destroying the instance.
    * @return isError = 0 for OK, 1 for Error 
    */
    bool end()
    {
        m_Can_Controller.end();
        return true;
    }

    /**
    * Send a Frame from Serial to CAN Channel
    * @param &Frame     Reference to the Frame to be sended
    * @return isError = 0 for OK, 1 for Error 
    */
    bool send(const Frame &frame)
    {
        bool success = true;
        if (frame.m_extended)
        {
            if (m_Can_Controller.beginExtendedPacket(frame.m_id, frame.m_dlc, frame.m_rtr) == 0)
            {
                success = false;
            }
        }
        else
        {
            if (m_Can_Controller.beginPacket(frame.m_id, frame.m_dlc, frame.m_rtr) == 0)
            {
                success = false;
            }
        }

        if (success)
        {
            if (0 != frame.m_dlc)
            {
                if (0 == m_Can_Controller.write(frame.m_data, frame.m_dlc))
                {
                    success = false;
                }
            }
            if (0 == m_Can_Controller.endPacket())
            {
                success = false;
            }
        }

        return success;
    }

    /**
    * Set the State of the CAN Channel.
    * @param state          BUS_STATE to be set to the CAN Channel
    * @return isError = 0 for OK, 1 for Error 
    */
    bool setState(BUS_STATE state)
    {
        bool success = true;
        switch (state)
        {
        case CLOSED:
            m_Can_Controller.sleep();
            m_currentState = CLOSED;
            break;

        case NORMAL:
            if (m_baudRate == 0)
            {
                success = false;
            }
            else
            {
                m_Can_Controller.wakeup();
                m_currentState = NORMAL;
            }
            break;

        case LISTEN_ONLY:
            if (m_baudRate == 0)
            {
                success = false;
            }
            else
            {
                m_Can_Controller.wakeup();
                m_currentState = LISTEN_ONLY;
            }
            break;

        default:
            success = false;
            break;
        }

        return success;
    }

    /**
    * Set the Baudrate of the CAN Channel.
    * @return isError = 0 for OK, 1 for Error 
    */
    bool setBaudrate(uint32_t baudrate)
    {
        bool success = true;
        m_baudRate = baudrate;
        m_Can_Controller.end();
        if (m_Can_Controller.begin(m_baudRate) == 0)
        {
            success = false;
        }
        m_Can_Controller.sleep();
        return success;
    }

    /**
    * Sent the BTR Registers of the CAN Channel.
    * @return 0 for OK, 1 for Error 
    */
    bool setBTR(uint8_t btr0, uint8_t btr1)
    {
        return false; /**< Must write to register. It returns error as the Controller does not allow it. Not possible to implement it. */
    }

    /**
    * Set the Filter Mode of the CAN Channel.
    * @param filter       Defines Filter based on FILTER_MODE Enum.
    * @return 0 for OK, 1 for Error 
    */
    bool setFilterMode(FILTER_MODE filter)
    {
        return m_Can_Controller.setFilterMode(filter);
    }

    /**
    * Set the Acceptance Code Register.
    */
    bool setACn(const Filter &acn)
    {
        return m_Can_Controller.setACRn(acn.m_filterBytes);
    }

    /**
    * Set the Acceptance Mask Register.
    */
    bool setAMn(const Filter &amn)
    {
        return m_Can_Controller.setAMRn(amn.m_filterBytes);
    }

    /**
    * Gets the Channel State from the CAN Controller.
    * @return BUS_STATE m_currentState stores the state of the CAN Channel.
    */
    BUS_STATE getChannelState()
    {
        return m_currentState;
    }

    /**
    * Gets the Status and Error Flags from the CAN Controller.
    * @return 0 for OK, 1 for Error 
    */
    uint8_t getStatusFlags()
    {
        return 0; /**< Must read register. It returns error as the Controller does not allow it */
    }

    /**
    * Polls one Message from the FIFO Buffer.
    * @return availableFrames. 0 for No new Frames.
    */
    bool pollSingle(Frame &frame)
    {
        bool success = false;

        if (m_Can_Controller.parsePacket() != -1) /**< Return changed to -1 to differenciate from DLC = 0 */
        {
            frame.m_id = m_Can_Controller.packetId();
            frame.m_dlc = m_Can_Controller.packetDlc();
            frame.m_extended = m_Can_Controller.packetExtended();
            frame.m_rtr = m_Can_Controller.packetRtr();

            for (int i = 0; i < frame.m_dlc; i++)
            {
                frame.m_data[i] = m_Can_Controller.read();
            }
            success = true;
        }

        return success;
    }

private:
    uint32_t m_baudRate;
    BUS_STATE m_currentState;
    ESP32SJA1000Class &m_Can_Controller;
};

/* INLINE FUNCTIONS ***************************************************************************/

/* PROTOTYPES *********************************************************************************/

#endif /* CAN_ADAPTER_H */