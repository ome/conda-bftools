set pkg=bftools-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %PREFIX%\share\%pkg%
copy %SRC_DIR%\*.bat %PREFIX%\share\%pkg%\

mkdir %PREFIX%\bin

for %%f in (%SRC_DIR%\*.bat) do echo %%~dp0..\share\%pkg%\%%~nxf %%* > %PREFIX%\bin\%%~nxf
if errorlevel 1 exit 1
