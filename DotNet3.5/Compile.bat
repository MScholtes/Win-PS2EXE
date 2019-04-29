@echo off
:: Markus Scholtes, 2019
:: Compile Win-PS2EXE in .Net 3.5x environment
setlocal

set COMPILER=%WINDIR%\Microsoft.NET\Framework\v3.5\csc.exe
if NOT EXIST "%COMPILER%" echo C# compiler not found&goto :READY

"%COMPILER%" /target:winexe "%~dp0Win-PS2EXE.cs" /r:"%ProgramFiles%\Reference Assemblies\Microsoft\Framework\v3.0\presentationframework.dll" /r:"%ProgramFiles%\Reference Assemblies\Microsoft\Framework\v3.0\windowsbase.dll" /r:"%ProgramFiles%\Reference Assemblies\Microsoft\Framework\v3.0\presentationcore.dll" /win32icon:"%~dp0MScholtes.ico"

:READY
:: was batch started in Windows Explorer? Yes, then pause
echo "%CMDCMDLINE%" | find /i "/c" > nul
if %ERRORLEVEL%==0 pause
