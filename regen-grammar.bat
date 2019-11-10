set SRC_DIR=%~dp0
call python.bat -m Parser.pgen %SRC_DIR%/Grammar/Grammar %SRC_DIR%/Grammar/Tokens %SRC_DIR%/Include/graminit.h.new %SRC_DIR%/Python/graminit.c.new
del "%SRC_DIR%\Include\graminit.h"
del "%SRC_DIR%\Python\graminit.c"
ren "%SRC_DIR%\Include\graminit.h.new" graminit.h
ren "%SRC_DIR%\Python\graminit.c.new" graminit.c