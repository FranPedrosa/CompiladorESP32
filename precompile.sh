#!/bin/bash
ARDUINO_DIR="$HOME/.arduino15"
GPP="$ARDUINO_DIR/packages/esp32/tools/xtensa-esp32-elf-gcc/1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-g++"
GCC="$ARDUINO_DIR/packages/esp32/tools/xtensa-esp32-elf-gcc/1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-gcc"
AR="$ARDUINO_DIR/packages/esp32/tools/xtensa-esp32-elf-gcc/1.22.0-80-g6c4433a-5.2.0/bin/xtensa-esp32-elf-ar"

DEFINES="-DESP_PLATFORM -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DHAVE_CONFIG_H" 

INC_CONFIG="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/config"
INC_APPTRACE="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/app_trace"
INC_UPDATE="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/app_update"
INC_ASIO="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/asio"
INC_BLSUPPORT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/bootloader_support"
INC_BT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/bt"
INC_COAP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/coap"
INC_CONSOLE="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/console"
INC_DRIVER="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/driver"
INC_ESPTLS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp-tls"
INC_ESP32="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp32"
INC_ESP32AA="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp_adc_cal"
INC_ESPEVENT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp_event"
INC_HCLIENT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp_http_client"
INC_HSERVER="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp_http_server"
INC_HOTA="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp_https_ota"
INC_RINGBUF="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp_ringbuf"
INC_ETHER="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/ethernet"
INC_EXPAT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/expat"
INC_FATFS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/fatfs"
INC_FMBUS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/freemodbus"
INC_FRTOS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/freertos"
INC_HEAP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/heap"
INC_IDFTEST="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/idf_test"
INC_JSMN="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/jsmn"
INC_JSON="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/json"
INC_SODIUM="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/libsodium"
INC_LOG="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/log"
INC_LWIP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/lwip"
INC_MBEDTLS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/mbedtls"
INC_MDNS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/mdns"
INC_MECC="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/micro-ecc"
INC_MQTT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/mqtt"
INC_NEWLIB="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/newlib"
INC_NGHTTP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/nghttp"
INC_NVSF="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/nvs_flash"
INC_OSSL="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/openssl"
INC_PBUFC="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/protobuf-c"
INC_PCOMM="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/protocomm"
INC_PTHREAD="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/pthread"
INC_SDMMC="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/sdmmc"
INC_SCA="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/smartconfig_ack"
INC_SOC="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/soc"
INC_SFLASH="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/spi_flash"
INC_SPIFFS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/spiffs"
INC_TCPT="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/tcp_transport"
INC_TCPIP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/tcpip_adapter"
INC_ULP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/ulp"
INC_VFS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/vfs"
INC_WLEVEL="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/wear_levelling"
INC_WIFIP="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/wifi_provisioning"
INC_WPAS="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/wpa_supplicant"
INC_XDM="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/xtensa-debug-module"
INC_CAMERA="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp32-camera"
INC_FACE="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/esp-face"
INC_FB="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/tools/sdk/include/fb_gfx"

INCLUDES="$INC_CONFIG $INC_APPTRACE $INC_UPDATE $INC_ASIO $INC_BLSUPPORT $INC_BT $INC_COAP $INC_CONSOLE $INC_DRIVER $INC_ESPTLS $INC_ESP32 $INC_ESP32AA $INC_ESPEVENT $INC_HCLIENT $INC_HSERVER $INC_HOTA $INC_RINGBUF $INC_ETHER $INC_EXPAT $INC_FATFS $INC_FMBUS $INC_FRTOS $INC_HEAP $INC_IDFTEST $INC_JSMN $INC_JSON $INC_SODIUM $INC_LOG $INC_LWIP $INC_MBEDTLS $INC_MDNS $INC_MECC $INC_MQTT $INC_NEWLIB $INC_NGHTTP $INC_NVSF $INC_OSSL $INC_PBUFC $INC_PCOMM $INC_PTHREAD $INC_SDMMC $INC_SCA $INC_SOC $INC_SFLASH $INC_SPIFFS $INC_TCPT $INC_TCPIP $INC_ULP $INC_VFS $INC_WLEVEL $INC_WIFIP $INC_WPAS $INC_XDM $INC_CAMERA $INC_FACE $INC_FB"

LIB_DIR="/home/fran/.arduino15/packages/esp32/hardware/esp32/1.0.2/libraries"

echo $1

O_INCLUDES="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/cores/esp32 -I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/variants/esp32 -I$LIB_DIR/ArduinoOTA/src"
INC_WIFI="-I$LIB_DIR/WiFi/src"
INC_UP="-I$LIB_DIR/Update/src"

ALL_INCLUDES="$O_INCLUDES $INC_WIFI $INC_UP -I$LIB_DIR/WebServer/src -I/home/fran/Arduino/libraries/ESP32_AnalogWrite -I$LIB_DIR/ESPmDNS/src -I$LIB_DIR/FS/src" 

GPP_FLAGS="-std=gnu++11 -fno-exceptions -Os -g3 -Wpointer-arith -fexceptions -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -w -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -fno-rtti -MMD -c -DF_CPU=240000000L"
GCC_FLAGS="-std=gnu99 -Os -g3 -fstack-protector -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wpointer-arith -w -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wno-unused-parameter -Wno-sign-compare -Wno-old-style-declaration -MMD -c"

O_DEFINES="-DARDUINO=10809 -DARDUINO_ESP32_DEV -DARDUINO_ARCH_ESP32 -DARDUINO_BOARD=\"ESP32_DEV\" -DARDUINO_VARIANT=\"esp32\" -DESP32 -DCORE_DEBUG_LEVEL=0"

LIB_CORE="$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/cores/esp32"

CORE_INCLUDES="-I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/cores/esp32 -I$ARDUINO_DIR/packages/esp32/hardware/esp32/1.0.2/variants/esp32"

rm bins/*

#Compiling library "ArduinoOTA"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/ArduinoOTA/src/ArduinoOTA.cpp -o bins/ArduinoOTA.cpp.o
echo 2

#Compiling library "WiFi"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiMulti.cpp -o bins/WiFiMulti.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFi.cpp -o bins/WiFi.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiClient.cpp -o bins/WiFiClient.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiGeneric.cpp -o bins/WiFiGeneric.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiScan.cpp -o bins/WiFiScan.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/ETH.cpp -o bins/ETH.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiAP.cpp -o bins/WiFiAP.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiServer.cpp -o bins/WiFiServer.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiSTA.cpp -o bins/WiFiSTA.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WiFi/src/WiFiUdp.cpp -o bins/WiFiUdp.cpp.o
echo 3

#Compiling library "Update"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/Update/src/Updater.cpp -o bins/Updater.cpp.o
echo 4

#Compiling library "WebServer"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WebServer/src/Parsing.cpp -o bins/Parsing.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WebServer/src/WebServer.cpp -o bins/WebServer.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/WebServer/src/detail/mimetable.cpp -o bins/mimetable.cpp.o
echo 5

#Compiling library "ESP32_AnalogWrite"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES /home/fran/Arduino/libraries/ESP32_AnalogWrite/analogWrite.cpp -o bins/analogWrite.cpp.o
echo 6

#Compiling library "ESPmDNS"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/ESPmDNS/src/ESPmDNS.cpp -o bins/ESPmDNS.cpp.o
echo 7

#Compiling library "FS"
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/FS/src/vfs_api.cpp -o bins/vfs_api.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $ALL_INCLUDES $LIB_DIR/FS/src/FS.cpp -o bins/FS.cpp.o
echo 8

#Compiling core...
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-rmt.c -o bins/esp32-hal-rmt.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-adc.c -o bins/esp32-hal-adc.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-uart.c -o bins/esp32-hal-uart.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-bt.c -o bins/esp32-hal-bt.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-sigmadelta.c -o bins/esp32-hal-sigmadelta.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-spi.c -o bins/esp32-hal-spi.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-cpu.c -o bins/esp32-hal-cpu.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-dac.c -o bins/esp32-hal-dac.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-matrix.c -o bins/esp32-hal-matrix.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-gpio.c -o bins/esp32-hal-gpio.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-timer.c -o bins/esp32-hal-timer.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-psram.c -o bins/esp32-hal-psram.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-time.c -o bins/esp32-hal-time.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/wiring_shift.c -o bins/wiring_shift.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/libb64/cencode.c -o bins/cencode.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-i2c.c -o bins/esp32-hal-i2c.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/wiring_pulse.c -o bins/wiring_pulse.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-touch.c -o bins/esp32-hal-touch.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-ledc.c -o bins/esp32-hal-ledc.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/esp32-hal-misc.c -o bins/esp32-hal-misc.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/stdlib_noniso.c -o bins/stdlib_noniso.c.o
$GCC $DEFINES $INCLUDES $GCC_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/libb64/cdecode.c -o bins/cdecode.c.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/Esp.cpp -o bins/Esp.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/WMath.cpp -o bins/WMath.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/Stream.cpp -o bins/Stream.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/WString.cpp -o bins/WString.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/cbuf.cpp -o bins/cbuf.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/base64.cpp -o bins/base64.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/StreamString.cpp -o bins/StreamString.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/main.cpp -o bins/main.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/MD5Builder.cpp -o bins/MD5Builder.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/HardwareSerial.cpp -o bins/HardwareSerial.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/FunctionalInterrupt.cpp -o bins/FunctionalInterrupt.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/Print.cpp -o bins/Print.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/IPAddress.cpp -o bins/IPAddress.cpp.o
$GPP $DEFINES $INCLUDES $GPP_FLAGS $O_DEFINES $CORE_INCLUDES $LIB_CORE/IPv6Address.cpp -o bins/IPv6Address.cpp.o
echo 9

$AR cru bins/core.a bins/Esp.cpp.o
$AR cru bins/core.a bins/FunctionalInterrupt.cpp.o
$AR cru bins/core.a bins/HardwareSerial.cpp.o
$AR cru bins/core.a bins/IPAddress.cpp.o
$AR cru bins/core.a bins/IPv6Address.cpp.o
$AR cru bins/core.a bins/MD5Builder.cpp.o
$AR cru bins/core.a bins/Print.cpp.o
$AR cru bins/core.a bins/Stream.cpp.o
$AR cru bins/core.a bins/StreamString.cpp.o
$AR cru bins/core.a bins/WMath.cpp.o
$AR cru bins/core.a bins/WString.cpp.o
$AR cru bins/core.a bins/base64.cpp.o
$AR cru bins/core.a bins/cbuf.cpp.o
$AR cru bins/core.a bins/esp32-hal-adc.c.o
$AR cru bins/core.a bins/esp32-hal-bt.c.o
$AR cru bins/core.a bins/esp32-hal-cpu.c.o
$AR cru bins/core.a bins/esp32-hal-dac.c.o
$AR cru bins/core.a bins/esp32-hal-gpio.c.o
$AR cru bins/core.a bins/esp32-hal-i2c.c.o
$AR cru bins/core.a bins/esp32-hal-ledc.c.o
$AR cru bins/core.a bins/esp32-hal-matrix.c.o
$AR cru bins/core.a bins/esp32-hal-misc.c.o
$AR cru bins/core.a bins/esp32-hal-psram.c.o
$AR cru bins/core.a bins/esp32-hal-rmt.c.o
$AR cru bins/core.a bins/esp32-hal-sigmadelta.c.o
$AR cru bins/core.a bins/esp32-hal-spi.c.o
$AR cru bins/core.a bins/esp32-hal-time.c.o
$AR cru bins/core.a bins/esp32-hal-timer.c.o
$AR cru bins/core.a bins/esp32-hal-touch.c.o
$AR cru bins/core.a bins/esp32-hal-uart.c.o
$AR cru bins/core.a bins/cdecode.c.o
$AR cru bins/core.a bins/cencode.c.o
$AR cru bins/core.a bins/main.cpp.o
$AR cru bins/core.a bins/stdlib_noniso.c.o
$AR cru bins/core.a bins/wiring_pulse.c.o
$AR cru bins/core.a bins/wiring_shift.c.o
