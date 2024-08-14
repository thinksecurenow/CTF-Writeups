Problem Description:
Crack your knuckles and wiggle your fingers - it's time to hack a casino! First things first - you need an entry point. Phishing is a tried and true method and somewhat of a specialty to Tacky Termite, why not start there?
The first step of a well-crafted social engineering campaign is to rustle up some targets - specifically a corporate email. Thankfully the casino has a website chock full of information to get us started. From there, use open source intelligence (OSINT) to find a usable email address.

Objectives:
Find the email address of a Lucky Lion employee, there should be a flag nearby!

Tools Required:
Web Browser

Provided to solve the CTF:
https://www.sans.org/blog/what-is-open-source-intelligence/
https://target-httpd.chals.io/casino/homepage.html

For this objective, we have to find the email address of one of the employees and are given the Lucky Lion’s home page. Conveniently, there’s a “Team” page with Twitter handles.
![image](https://github.com/thinksecurenow/CTF-Writeups/blob/main/WiCyS%202024/Offense/Images/O1%20-%20Find%20Your%20Targets.jpg

I checked the first person, Camilla, and viewed her Twitter account. I noticed she was following and got a reply from “Cryptic Guardian”.


I looked at this account, and followed the GitHub link to get the flag:


FLAG: ctf{maybeD0ntLISTtheC0rpEm@il}
