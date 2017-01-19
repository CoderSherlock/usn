CC=gcc
CFLAGS= -g -Wall
LFLAGS= -levent

INCLUDE=$(PWD)/include

LEVENT=$(PWD)/libs/libevent

SRCS=listen.c

OBJS=$(SRCS:.c=.o)

MAIN=test

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) -I$(INCLUDE) -o $(MAIN) $(OBJS) $(LFLAGS) -L$(LEVENT)

.c.o:
	$(CC) $(CFLAGS) -I$(INCLUDE) -c $< -o $@

clean:
	$(RM) *.o *~ $(MAIN)
