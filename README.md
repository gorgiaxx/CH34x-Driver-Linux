# CH34x Serial Driver

## Instructions

* Please run followed executable programs as root privilege
* Current Driver support versions of linux kernel range from 2.6.25 to 4.13.x
* Current Driver support 32-bits and 64-bits linux systems

## ChangeLog

* 1.1 modified to solve transmition between ch341 and ch341
* 1.2 Support high Linux kernel
* 1.3 Fix gibberish bug
* 1.4 Support high Linux kernel

## Build

Build CH34x driver module

```bash
make
```

load or unload linux driver of CH34x

```bash
make load
make unload
```

Check the usbserial modules your system loaded.

```bash
> lsmod | grep ch34
ch341                  16384  0
ch34x                  20480  0
usbserial              53248  2 ch34x,ch341
usbcore               282624  12 uvcvideo,usbhid,usb_storage,ehci_hcd,usbserial,ch34x,xhci_pci,btusb,uas,ch341,xhci_hcd,ehci_pci
```

Remove the old version CH341 module. And reconnect the CH341 UART Convertor to your PC.

```bash
sudo rmmod ch341
```

## About

* Author - tech@wch.cn Nanjing QinHeng Electronics Co.,Ltd.
* Official Download - [CH341SER_LINUX_ZIP](http://www.wch.cn/download/CH341SER_LINUX_ZIP.html)