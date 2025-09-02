@ECHO OFF

cl.exe /D_USRDLL /D_WINDLL simpleDLL.cpp /MT /link /DLL /OUT:simpleDLL.dll
