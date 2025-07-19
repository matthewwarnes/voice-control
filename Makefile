
LIBS := -lcurl -lboost_regex
FLAGS := -g -Wall

all: voicecommand

#Compilers
voicecommand: voicecommand.cpp voicecommand.h
	g++ -o $@ $< $(FLAGS) $(LIBS)

clean:
	rm *.o voicecommand

install: google speech-recog.sh voicecommand tts
	install google /usr/bin/google
	install tts /usr/bin/tts
	install speech-recog.sh /usr/bin/speech-recog.sh
	install voicecommand /usr/bin/voicecommand
	./installconf.sh
