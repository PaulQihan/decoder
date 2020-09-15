FFMPEG=/usr/local/bin/ffmpeg
SDL2=/usr/local/bin/sdl2
CC=g++
CFLAGS=-g -I$(FFMPEG)/include -I$(SDL2)/include
LDFLAGS = -L$(SDL)/lib -lSDL2 -lpthread -L$(FFMPEG)/lib/ -lswscale -lswresample -lavformat -lavdevice -lavcodec -lavutil -lavfilter  -lm 
TARGETS=decoder
all: $(TARGETS)
decoder:decoder_rtsp.cpp
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) -std=c++11 #注意这里的-std=c++11
clean:
	rm -rf $(TARGETS)

