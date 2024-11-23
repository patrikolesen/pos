# POS
C++ OS from scratch

This is the very first step to try to learn and I will be following 

https://wiki.osdev.org/Bare_Bones#Writing_a_kernel_in_C++

This will create a 32-bit kernel that will print out "Hello, kernel World!"

## Build kernel
```
mkdir build
cd build
cmake ..
make
```

## Run
### QEMU kernel
```
qemu-system-i386 --kernel src/kernel/pos.bin
```

### Iso
```
../create_iso.sh
qemu-system-i386 -cdrom pos.iso
```

### GDB
```
qemu-system-i386 --kernel src/kernel/pos.bin -s -S
gdb src/kernel/kernel.bin 
(gdb) b kernel_main
(gdb) c
```
