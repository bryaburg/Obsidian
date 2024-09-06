
2024-09-02 14:11

Status:

Tags:

[[Python]]
# Python Packet Cannon

``` Python
import socket

def send_custom_packets(target_ip, target_port, packet_size, num_packets):
    # Create a UDP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # Create a custom-sized packet
    packet = b'X' * packet_size

    # Send packets
    for _ in range(num_packets):
        sock.sendto(packet, (target_ip, target_port))
        print(f"Sent packet of size {packet_size} bytes")

    # Close the socket
    sock.close()

if __name__ == "__main__":
    # Configuration
    target_ip = '127.0.0.1'  # Change this to the IP address you want to send packets to
    target_port = 12345      # Change this to the port number you want to use
    packet_size = 1024       # Change this to your desired packet size (in bytes)
    num_packets = 10         # Change this to the number of packets you want to send

    send_custom_packets(target_ip, target_port, packet_size, num_packets)
```


# Reference
