CC=gcc --std=c99 -g

all: test_list

test_list: test_list.c list.o
	$(CC) test_list.c list.o -o test_list

list.o: list.c list.h
	$(CC) -c list.c

clean:
	rm -f list.o test_list