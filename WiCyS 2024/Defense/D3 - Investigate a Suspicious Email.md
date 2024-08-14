Problem Description:
  While you're keeping an eye on incoming alerts, you notice an email pop - https://target-httpd.chals.io/phish_attempt.html into The Lucky Lion's security inbox from a concerned employee. They report receiving an unexpected email asking them to verify their identity.
  There might be hidden evidence of tampering in this email, since on the surface it looks legitimate. Can you figure out where the attacker might have left a calling card?

Objective:
  Find the evidence of attacker tampering (will have the format flag{.........})

Tools Required:
  Web Browser and
  Cyberchef Tool

Provided to solve the CTF:
  Hints

Solution:
1. Using the web browser, scan the qr-code using the search feature in the web browser. The text in the qr-code will appear in the format simialr to that of the flag, BUT IT ISN'T the actual flag
  ![image](https://github.com/thinksecurenow/CTF-Writeups/blob/main/WiCyS%202024/Defense/Images/D3%20-%20Investigate%20a%20Suspicious%20Email%20(1).png)
  
2. Identify the cipher used 
  
3. Copy and paste the text in Cyberchef and let it bake!! And that's a wrap!
  ![image](https://github.com/thinksecurenow/CTF-Writeups/blob/main/WiCyS%202024/Defense/Images/D3%20-%20Investigate%20a%20Suspicious%20Email%20(2).png)
  
FLAG: flag{email_ph1sh1ng_attempt}
