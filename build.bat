@ECHO OFF
SETLOCAL
PUSHD %~dp0

MKDIR build
CD build

cmake .. -Dozz_build_postfix=0 -Dozz_run_tests_headless=0
cmake --build ./ --config=MinSizeRel

POPD
ENDLOCAL
