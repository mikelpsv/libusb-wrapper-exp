CC=gcc
CFLAGS= -c -g -I/usr/include/libusb-1.0 -L/usr/lib -lusb-1.0
BUILD=.build

all: libusb-wrapper

libusb-wrapper: main.o
	$(CC) $(BUILD)/main.o -o $(BUILD)/libusb_wrapper -lusb-1.0

main.o:
	$(CC) $(CFLAGS) main.c -o $(BUILD)/main.o

clean:
	rm -rf $(BUILD)/*.o $(BUILD)/libusb_wrapper
