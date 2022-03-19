set TESSERACT_SUPPORT_DIR=%CONDA_PREFIX%\Library\share\tesseract_support

echo TESSERACT_SUPPORT_DIR=%TESSERACT_SUPPORT_DIR%

pytest
if %errorlevel% neq 0 exit /b %errorlevel%