SRCS=$(sort $(wildcard *.cpp))
OBJS=$(SRCS:%.cpp=%.o)
PROG=oopoker

all: $(PROG)

clean:
	rm -f $(PROG)
	rm -f *.o

$(PROG): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: all clean

