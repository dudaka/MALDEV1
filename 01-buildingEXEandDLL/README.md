## Notes

- `Process Informer` is a program which is more powerfull than Task Manager. You can check a running process details like:
  - the command line
  - image type (64 bit or 32 bit)
  - image file name
  - location in memory
  - other DLLs (modules)
  - etc.

- How to run a DLL's function in Windows

```bash
# Calling function SayHello
rundll32 simpleDLL.dll,SayHello
```

- To check what functions are exported in a DLL, we can use `PE-bear`

- From `PE-Bear`, we can find the structure of a Portable Executable (PE) file (check Preferences)

- There are always Magic Bytes `M Z` at the beginning of `DOS Header`. This is a sign to tell us that the file is a PE file. Another sign is that `DOS Header` contains a constant string `This program cannot be run in DOS mode`. This is true for both 'exe' and 'dll' files

- a `PE` file has the following sections:
  - `.text` section contains all instructions
  - `.rdata` section contains read-only data
  - `.data` section contains all local variables.
  - `.pdata` section contains data on all exceptions
  - `.relog` section contains all the information telling the OS to dynamically load the base addresses.

## References

PE file

- https://upload.wikimedia.org/wikipedia/commons/1/1b/Portable_Executable_32_bit_Structure_in_SVG_fixed.svg

- https://github.com/corkami/pics/tree/master/binary/pe101