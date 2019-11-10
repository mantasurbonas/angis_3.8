set SRC_DIR=%~dp0

call python.bat %SRC_DIR%/Parser/asdl_c.py -h %SRC_DIR%/Include/Python-ast.h.new %SRC_DIR%/Parser/Python.asdl
del "%SRC_DIR%\Include\Python-ast.h"
ren "%SRC_DIR%\Include\Python-ast.h.new" Python-ast.h

@rem Regenerate Python/Python-ast.c using Parser/asdl_c.py -c
call python.bat %SRC_DIR%/Parser/asdl_c.py -c %SRC_DIR%/Python/Python-ast.c.new %SRC_DIR%/Parser/Python.asdl
del "%SRC_DIR%\Python\Python-ast.c"
ren "%SRC_DIR%\Python\Python-ast.c.new" Python-ast.c
