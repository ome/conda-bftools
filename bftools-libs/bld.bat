set pkg=bftools-%PKG_VERSION%-%PKG_BUILDNUM%

mkdir %PREFIX%\share\%pkg%
copy %SRC_DIR%\*.jar %PREFIX%\share\%pkg%\
copy %SRC_DIR%\*.xml %PREFIX%\share\%pkg%\
if errorlevel 1 exit 1
