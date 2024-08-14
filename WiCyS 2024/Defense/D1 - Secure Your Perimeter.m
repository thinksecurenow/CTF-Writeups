Secure your Perimeter

Problem Description:
After receiving a tip from a peer organization's Cyber Threat Intelligence team that prolific threat actor group Tacky Termite recently posted that they're gearing up to cyber-heist a casino, you've been tasked with making sure The Lucky Lion Casino is secured against any such cyber attacks.
As if it were that simple! You know it's impossible for any company to be fully protected against attacks, but you can certainly make it more difficult for any would-be attacker.
Let's start by eliminating any easy entry points by scanning The Lucky Lion's network for vulnerabilities. After running your vulnerability scanning tool Centauros, you now have a very long list of potential security issues impacting hosts in your environment.
It would definitely be best to remediate ALL of these issues, but who knows how much time you have before an attacker also discovers the vulnerabilities? You will need to prioritize the most critical issues first - take a look at the list and identify the CVE of the vulnerability that would be most prudent to remediate quickly.

Objective:
Identify the most critical vulnerability that should be remediated first
Flag Format CVE-<year>-<number> Example: CVE-2021-4422

Tools Required:
Any text editor (Notepad, TextEdit, etc.)

Provided to solve the CTF:
PDF of a network diagram and,
A json file containing the vulnerability scanner's results

Solution:
1. Review the hostnames in the network diagram - you will notice that all the machines/servers are using Windows OS
2. Look at the diagram and identify those servers that are public/internet facing eg. ar276joiu and jo124lkej
3. Open the vulnerability report using notepad as suggested. I used Visual Studio Code Editor
4. Filter by looking for the most critical vulnerabilities associated with those servers
5. After identifying the most critical vulnerbaility, the answer will be the CVE with the highest CVSS score

FLAG: CVE-2024-29994
