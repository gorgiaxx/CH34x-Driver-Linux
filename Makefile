ifeq ($(KERNELRELEASE), )
#KERNELDIR := /lib/modules/$(shell uname -r)/build
KERNELDIR := /lib/modules/$(shell uname -r)/build
PWD :=$(shell pwd)
default:
	$(MAKE) -C $(KERNELDIR)  M=$(PWD)  
clean:
	rm -rf .tmp_versions Module.symvers *.mod.c *.o *.ko .*.cmd Module.markers modules.order
load:
	modprobe usbserial
	insmod ch34x.ko
unload:
	rmmod ch34x
install:
	xz ch34x.ko
	cp ch34x.ko.xz /lib/modules/$(shell uname -r)/kernel/drivers/usb/serial/ch34x.ko.xz
else
	obj-m := ch34x.o
endif
