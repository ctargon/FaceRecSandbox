CXX ?= g++

CXXFLAGS += -c -Wall $(shell pkg-config --cflags opencv)
LDFLAGS += $(shell pkg-config --libs --static opencv)

facedetect: facedetect.o; $(CXX) $< -o $@ $(LDFLAGS)

borders: borders.o; $(CXX) $< -o $@ $(LDFLAGS)

%.o: %.cpp; $(CXX) $< -o $@ $(CXXFLAGS)

clean: ; rm -f facedetect.o facedetect borders.o borders
