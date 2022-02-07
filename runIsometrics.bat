echo off
::,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,::
:: written by Markus Rufflar 2016 ::
::,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,::
:: pnpiso path in your Autocad installationpath (dont use delimiter or ��...)
set pnpiso="C:\Program Files\Autodesk\AutoCad 2022\PLNT3D\PnPIso.exe"
:: isoconfig.xml path in your project, dont copy the xml file.
set configpath="IsoConfig.xml"
:: isoCreationLog.txt path in your project, dont copy the xml file.
set rootIsoLogPath="IsoCreationLog.txt"
:: Output Folder where your created dwg�s should be saved
set IsoLogpath="IsoCreationLog.txt"
:: Input Folder where your pcfs are located
set inputpath="C:\example\output"
:: Output Folder where your created dwg�s should be saved
set outputpath="C:\example\output"
:: regroot for plant3d 2021
:: set regroot="/regroot:SOFTWARE\Autodesk\AutoCAD\R24.0\ACAD-4117:409"
:: regroot for plant3d 2022
set regroot="/regroot:SOFTWARE\Autodesk\AutoCAD\R24.1\ACAD-5117:409"

%pnpiso% /config:%configpath% %inputpath% %outputpath% %regroot%

COPY %rootIsoLogPath% %IsoLogpath%
:: Comment to automatically close the console
pause

