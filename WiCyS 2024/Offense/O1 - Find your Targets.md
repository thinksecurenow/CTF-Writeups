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

Solution:
Going to the Lucky Lion’s home page and then the Team's webpage, we will find:
1. The social media contact information for some employees: ![image](https://github.com/thinksecurenow/CTF-Writeups/blob/main/WiCyS%202024/Offense/Images/O1%20-%20Find%20Your%20Targets.jpg)
2. Search for anyone of the employees on Twitter, but on Camilla page you will realise there is a comment from one individual that does not work at Lucky Lion
3. Follow the account of individual, they have a github page: ![image](https://github.com/thinksecurenow/CTF-Writeups/blob/main/WiCyS%202024/Offense/Images/O1%20-%20Find%20Your%20Targets%20(2).png)

FLAG: ctf{maybeD0ntLISTtheC0rpEm@il}
