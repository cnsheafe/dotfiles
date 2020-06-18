## refind\_linux.conf example

Replace `XXX` with the device id of the drive. `%v` can only be used if we edit `refind.conf` as described [here](https://wiki.archlinux.org/index.php/REFInd#For_kernels_automatically_detected_by_rEFInd). Otherwise, hardcode the `initramfs` filename. `initrd` corresponds to the installed CPU microcode. The below example assumes an Intel CPU.


```
"Boot using default options"  "root=/dev/XXX rw add_efi_memmap initrd=\intel-ucode.img initrd=\initramfs-%v.img apparmor=1 security=apparmor" 
"Boot to terminal"	      "root=/dev/XXX rw add_efi_memmap initrd=\intel-ucode.img initrd=\initramfs-%v.img systemd.unit=multi-user.target"
"Boot to single-user mode"    "archisobasedir=arch archisolabel=ARCH_202001 single"
"Boot to rescue target"       "ro root=/dev/XXX systemd.unit=rescue.target"
```

