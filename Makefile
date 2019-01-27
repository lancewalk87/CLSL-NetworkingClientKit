#### - compiler config
CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g

#### - path specs
SRC=src/
BIN=bin/
DEBUG=debug/

SRCS=SRC+CLNetworkingClient.cpp
OBJS=$(subst .cpp, .o,$(SRCS))

#### - compile scripts
all:  CLNetworkingClient

Build:
		$(BIN)

CLNetworkingServer: $(OBJS)
	$(CXX) $(LDFLAGS) -o CLNetworkingClient $(OBJS) $(LDLIBS)

depend: .depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CXX) $(CPPFLAGS) -MM %^>>./.depend;

clean:
	$(RM) $(OBJS) CLNetworkingClient

distclean:
	$(RM) *~ .depend

include .depend
