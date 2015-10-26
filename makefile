PROCESS=1

all:
	mkdir -p bin
	gcc -DPROCESS=$(PROCESS) -pthread src/server.c -o bin/server
	gcc src/client.c -o bin/client
client:
	mkdir -p bin
	gcc src/client.c -o bin/client
server:
	mkdir -p bin
	gcc -DPROCESS=$(PROCESS) -pthread src/server.c -o bin/server
clean:
	rm -rf bin
clean-client:
	rm -rf bin/client
clean-server:
	rm -rf bin/server
