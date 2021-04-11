# Win-PS2EXE
Graphical front end to PS1-to-EXE-compiler PS2EXE.ps1

Author: Markus Scholtes

Version: 1.0.1.1

Date: 2021-04-10

With [PS2EXE.ps1](https://github.com/MScholtes/TechNet-Gallery) originally created by Ingo Karstein you can compile Powershell scripts to real Windows executables. **Win-PS2EXE** is a small graphical front end to the script.

### Features and restrictions:
* **Win-PS2EXE** does not support all parameters of **PS2EXE.ps1**
* WPF application that compiles without Visual Studio or MSBuild on every Windows with .Net 3.5x or .Net 4.x
* only one source file
* drag'n'drop for file names
* separate .Net 4.x and .Net 3.5x versions (since .Net 3.5x do not allow uncompiled event handlers in XAML)

### Screenshot:
![Screenshot](Screenshot.jpg)

### How to compile:
Run **Compile.bat** (in a .Net 3.5x environment use the version in folder *DotNet3.5*).

### How to use:
Ensure **PS2EXE.ps1** is in the same directory as **Win-PS2EXE.exe**.

Start **Win-PS2EXE.exe** and fill in the desired fields (only *Source file* is mandatory).

Click **Compile**, a powershell window opens and your powershell script will be compiled to an executable.

### Changes:
1.0.1.1: target folder dialog added (code by Josip Medved, https://www.medo64.com/2011/12/openfolderdialog/)

1.0.0.3: file fields no longer run out

1.0.0.2: -noConfigFile is default now
