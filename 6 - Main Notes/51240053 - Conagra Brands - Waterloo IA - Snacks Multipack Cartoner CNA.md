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
- ~~Just got out of the cartoner design review. They moved the outputs for the Glue and reject belts to O:8/0, O:8/1, and O:8/2. I think we had those at O:8/11, O:8/12, and O:8/13. Can you move those ouptuts in the code when you get back.
- Clean up unused tags                                                                                                                                                                                 

-  ~~SafetyProgram MainRoutine   

~~rung 0                   Add NOP instruction to prevent the rung warning.        

- _02_MAIN         

~~rung 9                   Add description to B3[18].13: ALWAYS ON BIT                

~~rung 13                 T4[54] has a different time base then when it was in the SLC so the LIM instruction should have limits of 100-990 instead of 10-99.

rung 29                 This is the output rung for Main_Drive_Motor_Output.Stop. You have the stop output turning on when the Master Relay input is on, and the Immediate Fault Summation is on. This is incorrect. The Immediate Fault Summation bit is actually on when no Faults are present. When I looked at the old program this rung was used to turn on the drive enable output. Hardwired drives work a little bit different; they need the enable bit to be on then they can start and stop from the one start output. With ethernet control there is no enable bit, there is just a start and a stop output. Let’s add the Master relay input to the start rung above outside of all the branches. Then let’s replace Main_Drive_Motor_Output.Start with an internal tag for the run command, call it something like MainDriveMotorRunCommand.Then on the next rung look at the run command bit to be on and for the Main_Drive_Motor_Input.Ready to be on in order to turn on the Main_Drive_Motor_Output.Start bit. You can branch around everything in the rung and on the other branch say when run command is off then turn on the Main_Drive_Motor_Output.Stop bit. Also, the old program looked at O:9/0 several places in the program and you replaced those with Main_Drive_Motor_Input.Active Bit. Let’s use the new run command bit in place of the Active bit throughout the program.                                                                                                                                                                     

rung 36                 same note as above but for the infeed conveyor motor.

~~rung 66                 We move 0 into N7[255], T4[255].pre, and C5[255].pre. Those don't appear to be used anywhere else in the logic. Delete the rung.

~~- _03_FAULTS

~~rung 14-16          PLS_0805 input is gone. Delete these three rungs. Cross reference B20[0].13 and delete all references to it. 

~~- _04_ETH+COMM

~~rung 0                   T4[50] is not used, delete the rung        

~~rung 1                   C102[1] is not used, delete the rung    

~~rung 2                   All N50 bits need to be renamed if they say =DH+ TO CUCON1= then rename  that with =ENET TO CUPCON1=

~~- _06_ENCODER

~~rung 1                   Delete Channel 6 it is not needed.

~~rung 2                   Rename Description of N7[0] to ENCODER VALUE, I know it is read by CSF but I don't think we need that in the tag name.

~~- _07_S_R_LOGIC

~~rung 0                   Delete the temporary descriptions on the ONS instructions. I played around with possible ways to clean up this rung, but I couldn't come up with anything better while still using the BSL instruction. I wanted to change B22, B23, and B24 to an array of INT instead of DINT but the BSL instruction will only work with DINTs. We can leave this rung how it is. However, I did realize that the conversion changes all the B and N data tags from arrays of INTs to arrays of DINTs. I would like to change those data types to INT arrays, we will have problems with the existing MSG instructions if we don't in cupcon. Change all B and N to arrays of INTs except B22, B23, and B24 since they need to be DINTs for the BSL instructions.

~~rung 35                 CR_1124 doesn’t physically exist anymore so let’s rename that tag to GlueEnabled. The pls region and glue outputs are not used correctly either. This rung should look similar to how it was in the old PLC B3[2].8 and main drive start output should be the two conditions to turn on GlueEnabled. Then make two new rungs below. In the first new rung look at GlueEnabled and Channel1.Active to turn on O:8/0. Similarly in the second new rung look at GlueEnabled and Channel3.Active to turn on O:8/2. 

~~rung 55                 This will be similar to the above. CR_1122 gets renamed to RejectBeltsEnabled and alias gets removed. Channel2.Active is removed from this rung. Insert a new rung below that looks at RejectBeltsEnabled and Channel2.Active to turn on O:8/1. 

- ~~_08_SPEED 

~~rung 24                 I realize this was like this in the old program but moving 20.8 and 16.4 into an integer that can't have decimals is pointless. Change 20.8 to 21 and change 16.4 to 16.               

~~rung 30-31         We do not need to use a CPT for the scaling of the motor speed. When they were hardwired 4-20mA outputs were represented by values of 6242-31208. with the 525s on ethernet the freq command has is represented in Hz x 100. So, if we want to send 90 Hz to the infeed conveyor then we just need to set the freq command to 9000. So, change these CPT instructions to MUL instructions and just take N7[60] or N7[61] and multiply by 100. 

- ~~_09_MESSAGE

~~rung 86                 Delete this rung. Slot 12 was removed.
# Reference

[[PS-5000 Series Programmable Limit Switch.pdf]]
[[PowerFlex 525 Adjustable Frequency.pdf]]
[[PowerFlex 525 Adjustable Frequency AC Drive Parameter Groups.pdf]]
[[PS-5000 Series Programmable Limit Switch.pdf]]
[[843E Absolute Encoders with EthernetIP.pdf]]
[[EthernetIP Absolute Encoder.pdf]]


