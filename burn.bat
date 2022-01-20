:: by xiaolaba, 2022-JAN-20

set COM_PORT=COM11
set BAUD_RATE=921600
set FIRMWARE=wifi-serial.ino.bin

%USERPROFILE%\AppData\Local\Arduino15\packages\esp8266\tools\python3\3.7.2-post1/python3 ^
-I %USERPROFILE%\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\3.0.2/tools/upload.py ^
--chip esp8266 ^
--port %COM_PORT% ^
--baud %BAUD_RATE% ^
--before default_reset ^
--after hard_reset write_flash 0x0 %FIRMWARE%


pause