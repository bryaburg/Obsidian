
2024-10-16 10:54

Status:

Tags:

[[Cisco]]

# CCNA Configure Your First ACL


## ACL Overview

- ACL also known as access control list is used for traffic control and network security
- They are a set of rules that can be source based and ip destination
- They can be used to permit or deny traffic
- Denying traffic drops the results or puts it into a bitbucket
- ACLs are used on routers switches and firewalls
- There are two types standard and extended
- Standard are used to filter traffic based on source ip only
- Standard syntax ``` access-list <access-list-number> {permit|Deny} {host|source source-wildcard|any}```
- Example allowing traffic for 10.10.1.10 ``` access-list 10 permit host 10.10.1.10```
- if you want to create one that allows an entire subnet you need to add a wildcard mask.  example allowing 10.10.5.x/24 subnet ``` access-list 10 permit 10.10.5.0 0.0.0.255```
- by default there is an implicit deny all clause as a last statement with any ACL
- Example of explicitly allow all other traffic ``` access-list 10 permit any```
- Extended ACLs use source and destination ip addresses, source and destination ports, and other criteria.  
- They are numbered 100 to 199 and 2000 to 2699 or can also be named
- General structure of extended ACLs ```access-list access-list-number {deny|permit} protocol source source-wildcard destination destination-wildcard```
- example source network 10.10.1.0/24 to 10.10.5.0/24.  the second line denies TCP traffic with source IP 10.10.1.0/24 and destination 10.10.5.0/24 on port 80.  The last line permits all other ip traffic.  
``` 
access-list 1 permit ip 10.10.1.0 0.0.0.255 10.10.5.0 0.0.0.255
access-list 1 deny tcp 10.10.1.0 0.0.0.255 eq 80 10.10.5.0 0.0.0.255
access-list 1 permit ip any any 
```

- after creating an ACLs you want to apply the standard to gigabitethernet 0/0 interface
```
interface GigabitEthernet 0/0
ip access-group 1 in
```

## Configure Your First ACL

- Example creating ACL that allows H1 access to H3 & H4 but deny access to the other hosts in the same subnet H2
- There are also 2 switches access-sw1 handles 172.16.10.0/24 H1 & H2 and access-sw2 handles 172.16.10.0/24 H3 & H4.  The ACLs will be applied to router1
- log into router1 and enter global config mode.
```
enable
conf t
```
- Next create ACL 
```
access-list 1 permit 172.16.10.11
```
- Add ACL to interface Gig 0/0 
```
interface Gig0/0
ip access-group 1 in
end
```
- 
# Reference
