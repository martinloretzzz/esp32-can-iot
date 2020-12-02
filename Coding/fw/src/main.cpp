/***************************************************************************************************
  (c) NewTec GmbH 2020   -   www.newtec.de
  $URL: https://github.com/NewTec-GmbH/esp32-can-iot $
***************************************************************************************************/
/**
@addtogroup Application
@{
@file       main.cpp

Main Application

* @}
***************************************************************************************************/
/* INCLUDES ***************************************************************************************/
#include <Arduino.h>
#include <Lawicel.h>
#include <SerialAdapter.h>
#include <CANAdapter.h>
#include <NVMAdapter.h>
#include <WSAdapter.h>
#include <ESP_Server.h>
#include <Settings.h>
#include <io.h>
#include <Board.h>

/* CONSTANTS **************************************************************************************/

/* MACROS *****************************************************************************************/

/* TYPES ******************************************************************************************/

/* PROTOTYPES *************************************************************************************/

/* VARIABLES **************************************************************************************/
SerialAdapter serialAdapter;
CANAdapter sja1000Adapter;
NVMAdapter flashAdapter;
WSAdapter websocketadapter;
//Lawicel protocolLawicel(serialAdapter, sja1000Adapter, flashAdapter);
Lawicel protocolLawicel(websocketadapter, sja1000Adapter, flashAdapter);

/* PUBLIC METHODES ********************************************************************************/
void restart();
void setErrorLED();

void setup()
{
  Serial.begin(115200);
  Board::init();
  if (!protocolLawicel.begin())
  {
    setErrorLED();
  }
  else if (!ESPServer::begin())
  {
    setErrorLED();
  }
}

void loop()
{
  protocolLawicel.executeCycle();
  if (ESPServer::handleNextRequest())
  {
    restart();
  }
}

/* PROTECTED METHODES *****************************************************************************/

/* PRIVATE METHODES *******************************************************************************/

/* EXTERNAL FUNCTIONS *****************************************************************************/

/* INTERNAL FUNCTIONS *****************************************************************************/

void restart()
{
  delay(5000);
  protocolLawicel.end();
  ESPServer::end();
  Board::reset();
}

void setErrorLED()
{
  Board::errorLED.write(HIGH);
  while (true)
  {
  }  
}