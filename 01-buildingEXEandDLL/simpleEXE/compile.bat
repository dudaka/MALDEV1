@ECHO OFF

cl.exe /nologo /Ox /MT /W0 /GS- /DNDEBUG /TcsimpleEXE.cpp /link /OUT:simpleEXE.exe /SUBSYSTEM:CONSOLE /MACHINE:x64