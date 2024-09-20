2024-08-20 15:02

Status:

Tags:

[[Esco]] 
[[Conagra]]
[[Projects]]

# 51240053 - Conagra Brands - Waterloo IA - Snacks Multipack Cartoner CNA

- PLC Revision 34
|**Device**|**IP Address**|
|PLC Port A1|172.25.111.193|
|PLC Port A2|192.168.1.10|
|Stratix Switch|192.168.1.1|
|HMI 1|192.168.1.20|
|HMI 2|192.168.1.21|
|Encoder|192.168.1.30|
|Main Drive VFD|192.168.1.40|
|Infeed Conveyor VFD|192.168.1.41|

|             |                                              |
| ----------- | -------------------------------------------- |
| MSG_N99_260 | Delete, do not replace with Ethernet Message |
| MSG_N99_210 | Change to Ethernet Message                   |
| MSG_N99_211 | Change to Ethernet Message                   |

MSG_N99_260
![[Pasted image 20240910154007.png]]

- ~~Switch VFD Parameters to Global~~
- ~~Remove Remove drive status param~~
- ~~add output current~~
- ~~update running to active~~ 
- ~~start stop commands review~~
- ~~speed reference commands update to point to new tag~~
- speed reference in speed line 30
- N7[0] - N7[39] - N7[50] -  Left alone
- ~~update comments on data highway to say read by n7[50] cup con,  N7[0] & n7[39] Read by CSF (Connect Shop Work Floor).  Also B3[10] Message from cup con 1 ~~
- ~~_2_Main routine 68~~
- Encoder: 843E-SIP2BA7
- ~~0-255 scaled to 0-359~~
- ~~add zero in front of routines~~
- fix PLS outputs
- go over IO
- ~~~Delete bad tags~~~
- ~~Fix Migration code~~
- ~~build controller~~
- ~~Password Protect~~
- 
# Reference

[[PS-5000 Series Programmable Limit Switch.pdf]]
[[PowerFlex 525 Adjustable Frequency.pdf]]
[[PowerFlex 525 Adjustable Frequency AC Drive Parameter Groups.pdf]]
[[PS-5000 Series Programmable Limit Switch.pdf]]
[[843E Absolute Encoders with EthernetIP.pdf]]
[[EthernetIP Absolute Encoder.pdf]]


