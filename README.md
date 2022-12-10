# qt6base_win7
Port of Qt6.4.1 qtbase to Windows 7

Tested on Windows7 SP1 x64 with all updates, Visual Studio 2022, Win10 SDK 10.0.18362

### Build
* Install Visual Studio
* Change path to vcvarsall.bat, arch, path to Qt in set_env.bat if needed
* Download Qt: https://www.qt.io/download
* Choose Qt6.4.1 binaries and sources
* Choose CMake, Ninja, OpenSSL
* There will be errors during installation, just skip them
* Replace downloaded qtbase in Src with this qtbase
* Run set_env.bat
* cd %_ROOT%\..
* mkdir qtbase-build
* cd qtbase-build
* ..\Src\configure.bat -prefix "path/to/installed_qt_binaries" -release -submodules qtbase
* cmake --build . --parallel
* cmake --install .
