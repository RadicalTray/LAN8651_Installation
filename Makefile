ifndef KDIR
	KDIR=/lib/modules/$(shell uname -r)/build
endif

obj-m := microchip_t1s.o
obj-m += lan865x_t1s.o
obj-m += lan865x_t1s_dummy.o
lan865x_t1s-y := lan865x.o oa_tc6.o
lan865x_t1s_dummy-y := lan865x_dummy.o oa_tc6_dummy.o

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

install_init:
	sudo cp ./lan865x_init /etc/init.d
	sudo update-rc.d lan865x_init defaults
