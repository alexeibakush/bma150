obj-m += bma150.o

KDIR ?= /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm -f Module.symvers modules.order *.o *.mod.* *.ko




