# Summary of Computer Networking

## Physical Layer
- Protocol: 802.11 (Wifi)
- Data: Bits
- n/a

## Data-link Layer
- Protocols: Ethernet
- Data: frames
- MAC address (48 bits, 6 x 2 hex)

## Network Layer
- Protocols: IP
- Data: datagram
- IP address
- Technology: NAT

## Transport Layer
- Protocols: TCP/UDP
- Data: segment
- Port (80 for http)

## Application Layer
- Protocols (many): http/smtp/dhcp/...
- Data: messages
- n/a
- In OSI 7 layer, including presentation layer

## Devices
- Hub (now replaced by switch?)
- Switch
- Router
- Gateway

## Concepts
- NAT (Network Address Translation):
	- IP masquerading (One-to-Many NAT, Hide IP of the computer, seems that the data is from the router)
- IANA: distributes IPs
- VPN
- Proxy
- DNS
- **ping**: send a special typle of ICMP message called Echo Request (ping 8.8.8.8)
	- Send back a reply
- **TraceRoute** (traceroute google.com)
- **netcat** (nc google.com 80)
- **nslookup** for **DNS** (nslookup twitter.com)
- Cloud

## Connect to Internet
- Telephone: Modem (modulator/demodulator)
- Broadband
	- T-carrier technologies;
	- DSL (digital subscriber line): ADSL, SDSL
	- Fiber connections
- WAN (Wide Area Network)
- Point-to-Point
- Wireless Network
	- Protocols: 802.11 (802.11a, b, g, ac), on physical + datalink layer
	- 2.4 GHz to 5 GHz
	- wireless access point
	- 4 addresses in header (rather than 2)
	- 1. Ad-hoc (connects to each other, most common)
	- 2. WLANS
	- 3. Mesh networks (mixture of 1 and 2)
