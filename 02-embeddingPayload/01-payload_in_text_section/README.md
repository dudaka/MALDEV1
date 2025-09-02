
# Notes

- Trojans can hide executable code in various PE sections:
  - `.text` section: typically for code, but can be abused to store payloads or shellcode.
  - `.data` section: used for global/static variables, but can also store payloads.
  - `.rsrc` section: resource section, often used to embed data or payloads.

- Memory allocation for payload execution is often done in two steps:
  1. Allocate memory with `ReadWrite` permissions.
  2. Change permissions to `Executable` just before running the payload.
  - This approach helps evade detection by security software that flags memory regions with both write and execute permissions.

- Common Windows API functions used in this technique:
  - `VirtualAlloc`: Allocates memory in the process.
  - `RtlMoveMemory`: Copies the payload into the allocated memory.
  - `VirtualProtect`: Changes memory protection to executable.
  - `CreateThread`: Executes the payload in a new thread.

- Attaching the running process with x64dbg, `File` > `Attach` > Sellect the running process

# References

- [VirtualAlloc](https://docs.microsoft.com/en-us/windows/win32/api/memoryapi/nf-memoryapi-virtualalloc)
- [RtlMoveMemory](https://docs.microsoft.com/en-us/windows/win32/devnotes/rtlmovememory)
- [VirtualProtect](https://docs.microsoft.com/en-us/windows/win32/api/memoryapi/nf-memoryapi-virtualprotect)
- [CreateThread](https://docs.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-createthread)