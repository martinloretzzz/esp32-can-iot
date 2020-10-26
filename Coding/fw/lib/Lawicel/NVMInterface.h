/***************************************************************************************************
  (c) NewTec GmbH 2020   -   www.newtec.de
  $URL: https://github.com/NewTec-GmbH/esp32-can-iot $
***************************************************************************************************/
/**
@addtogroup Interfaces
@ingroup Lawicel
@{
@file       NVMInterface.h

NVM Interface for Lawicel Protocol

* @}
***************************************************************************************************/
#ifndef NVM_INTERFACE_H
#define NVM_INTERFACE_H

/* INCLUDES ***************************************************************************************/

/* C-Interface ************************************************************************************/
extern "C"
{
}

/* FORWARD DECLARATIONS ***************************************************************************/

class NVMInterface
{
public:
  /* CONSTANTS ******************************************************************************/

  /* TYPES **********************************************************************************/

  /**
  * Default constructor creates instance of the class using default values.
  */

  NVMInterface()
  {
  }

  /**
  * Default destructor deletes instance of the class.
  */

  virtual ~NVMInterface()
  {
  }

  /**
    * Configures and starts the NVM Controller to use the user values.
    */
  virtual uint8_t begin() = 0;

  /**
  * Stops the NVM Module without destroying the instance.
  */
  virtual uint8_t end() = 0;

  /**
  * Save Data in NVM
  */
  virtual void save(const String &name, int32_t value) = 0;

  /**
  * Save String in NVM
  */
  virtual void save(const String &name, const String &value) = 0;

  /**
  * Read Data from NVM
  */
  virtual uint32_t readInt(String name) = 0;

  /**
  * Read String from NVM
  */
  virtual String readString(String name) = 0;

private:
};

/* INLINE FUNCTIONS ***************************************************************************/

/* PROTOTYPES *********************************************************************************/

#endif /* NVM_INTERFACE_H */