/***************************************************************************************************
  (c) NewTec GmbH 2020   -   www.newtec.de
  $URL: https://github.com/NewTec-GmbH/esp32-can-iot $
***************************************************************************************************/
/**
@addtogroup Webserver
@{
@file       Web_Config.cpp

Stores the Credentials and configuration of the Webserver. @ref Web_config.h

* @}
***************************************************************************************************/
/* INCLUDES ***************************************************************************************/
#include "Web_Config.h"

/* C-Interface ************************************************************************************/
extern "C"
{
}

/* CONSTANTS **************************************************************************************/
static const String DIRECTORY = "Server";
static String STA_SSID = "";
static String STA_PASSWORD = "";
static String AP_SSID = "ESP32";
static String AP_PASSWORD = "hochschuleulm";
static String WEB_USER = "admin";
static String WEB_PASSWORD = "admin";

/* MACROS *****************************************************************************************/

/* TYPES ******************************************************************************************/

/* PROTOTYPES *************************************************************************************/

/* VARIABLES **************************************************************************************/

/* PUBLIC METHODES ********************************************************************************/
/**************************************************************************************************/

void WebConfig::importConfig()
{
    Settings::get(DIRECTORY, "STA_SSID", STA_SSID, "");
    Settings::get(DIRECTORY, "STA_Password", STA_PASSWORD, "");
}

/**************************************************************************************************/
const String &WebConfig::getSTA_SSID()
{
    return STA_SSID;
}
/**************************************************************************************************/
const String &WebConfig::getSTA_PASS()
{
    return STA_PASSWORD;
}

/**************************************************************************************************/
const String &WebConfig::getAP_SSID()
{
    return AP_SSID;
}

/**************************************************************************************************/
const String &WebConfig::getAP_PASS()
{
    return AP_PASSWORD;
}

/**************************************************************************************************/
const String &WebConfig::getWEB_USER()
{
    return WEB_USER;
}

/**************************************************************************************************/
const String &WebConfig::getWEB_PASS()
{
    return WEB_PASSWORD;
}

/**************************************************************************************************/
void WebConfig::saveConfig(const String &key, const String &value)
{
    Settings::save(DIRECTORY, key, value);
}

/* PROTECTED METHODES *****************************************************************************/

/* PRIVATE METHODES *******************************************************************************/

/* EXTERNAL FUNCTIONS *****************************************************************************/

/* INTERNAL FUNCTIONS *****************************************************************************/
