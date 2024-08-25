
2024-08-09 11:38

Status:

Tags:

[[Esco]] 
[[Kraft Heinz]]
[[Projects]]

# 51240016 - Kraft Heinz - Cedar Rapids IA AMC Ammonia HMI Glitch Reset - General

There was another issue over the weekend with the screen. Sauer and Klein let us know that the screen locked up again but this time it didn’t seem to follow a power blip to anyone’s knowledge because when that happens there are usually a number of things Klein needs to go through and fix, and this time the only thing that seemed to be acting weird was the transfer pump which doesn’t look to be tied to our upgraded PLC system. The new system is on a UPS so the power blips shouldn’t affect the equipment in the cabinet. This leads us to believe its something on the network or at the server.

Mike Vaske and I discussed the situation, and he was able to remote into the client application and control the screen from the server which means that the Thin Manager’s client application didn’t freeze. I called Rockwell’s tech support to see if we could further diagnose the issue. They want to do a remote session to trouble shoot the application. Below is the ticket with Rockwell’s notes. Unfortunately, our engineer Jacob who would be able to work with Rockwell is on site commissioning another project this week and won’t be available to help run through the steps. I have another engineer who might be able to help but he doesn’t have Kraft credentials. I’m going to see if I can work through Bryan Burgess since he has access.

In the meantime, Mike Vaske was going to reach out to Rockwell and see if they can monitor the network to see if they notice anything out of the ordinary. We probably won’t see anything come back until the issue occurs again.

ROCKWELL TICKET

This is a response for Ticket* 4010761254 - TM 6200T-NA screen is frozen when there are power blips.. It is currently marked as Waiting.

The most recent response is below. The full ticket history can be found at Service Ticket History

Response By Outgoing Incident Email (Jeison Javier Sarria) (08/20/2024 12:08 PM)

Hi Cody,

Regarding the 6200T-NA terminal screen frozen when there are power blips, please identify if the issue is reproduced on the RD session. Is important to discard any problems with the ThinManager environment.

Shutting down the terminal and creating an RD session with the same user account as the terminal, should bring the terminal user session. It is recommended to check if the issue is reproduced on the same RD session outside the Thinclient.
# Reference
