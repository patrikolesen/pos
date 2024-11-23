mkdir -p isodir/boot/grub
cp src/kernel/pos.bin isodir/boot/pos.bin
cp ../grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o pos.iso isodir