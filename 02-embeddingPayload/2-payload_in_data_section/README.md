## Notes

- The main difference compared to `Embbeding shellcode payloads in text section` is that the `shellcodePayload` is defined globally instead of defining locally inside the `main` function. These changes will make this variable allocated in `data` section.