#define SSP 2
#define IPALLOCATION 0
#define IPCOMMIT 1
#define IPDECLINE 2
#define IPDEALLOCATION 3
#define DHCPDISCOVER 0
#define DHCPREQUEST 1
#define DHCPDECLINE 2
#define DHCPRELEASE 3




struct sspMessage
{
	unsigned char messageType;
	unsigned char event;
};
