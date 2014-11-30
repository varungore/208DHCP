all: dhcp_server
dhcp_server: server.o packet.o log.o ip_allocator.o ssp.o
	gcc -g -o dhcp_server server.o packet.o log.o ip_allocator.o ssp.o -lpthread -lsqlite3

server.o: dhcp_server.c ip_allocator.c dhcp_log.h dhcp_server.h dhcp_packet.h
	gcc -g -c dhcp_server.c -o server.o

packet.o: dhcp_packet.c dhcp_log.h dhcp_packet.h
	gcc -g -c dhcp_packet.c -o packet.o
	
log.o: dhcp_log.c dhcp_log.h
	gcc -g -c dhcp_log.c -o log.o
ip_allocator.o: ip_allocator.c dhcp_server.h
	gcc -g -c ip_allocator.c -o ip_allocator.o -lsqlite3
ssp.o: ssp.c ssp.h
	gcc -g -c ssp.c -o ssp.o

clean:
	rm dhcp_server server.o packet.o log.o ip_allocator.o ssp.o
