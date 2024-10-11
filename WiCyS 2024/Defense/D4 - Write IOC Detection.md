Problem Description:
Now that we have the threat actor's cred harvesting site (wood-chewers.trees), let's write a detection rule using Suricata to alert on HTTP traffic going out from The Lucky Lion's network to the domain.
Given the Suricata rule below, can you fill in the missing information to complete the rule?
    alert http $CORP_NET any -> $EXTERNAL_NET any (msg:"Detected traffic to wood-chewers.trees"; http.host; _____________; sid:1000001; rev:1;)

Objective:
Enter the missing information to complete the Suricata rule

Tools Required:
Text Editor

Provided to solve the CTF:
https://docs.suricata.io/en/latest/

Solution:
After reviewing the suricata document for more than 10 minutes, I realized the missing flag was part of suricata rule.

"alert http $CORP_NET any -> $EXTERNAL_NET any (msg:"Detected traffic to wood-chewers.trees"; http.host; content:"wood-chewers.trees"; sid:1000001; rev:1;)"

FLAG: content:"wood-XXXXXX.XXXXX"
