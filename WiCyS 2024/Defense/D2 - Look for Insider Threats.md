Look for Insider Threats

In addition to securing your perimeter, it would probably be a good idea to double-check that you don't have any insiders working against The Lucky Lion, especially knowing Tacky Termite has occasionally used insiders to help them gain access to their victims' environments in the past.
One standard way to look for insider threats is to try to find sensitive data in places it shouldn't be. As a member of the Data Loss Prevention team, you could craft a Regular Expression (RegEx) to find TINs, or Tax Identification Numbers stored in unusual locations in The Lucky Lion's environment. The Lucky Lion is required to store TINs (only Social Security Numbers and Individual Taxpayer Identification Numbers) for gamblers who win more than $5000 (the regulations don't say how they have to store them, though!), though they should never appear anywhere other than the database that's intended to store them.
Normally, this task wouldn't be too hard, and there are lots of examples out there for TINs already. Unfortunately, the decision was made at one point to "encrypt" the TINs in a misguided attempt to increase security. Your job is now much more fun™!
The "encryption" method, which they've taken to calling Visionàry Algorithm Protecting IDs, involves modifying each digit using its corresponding value in the passphrase: LUCKYLION

      def vapid(tin, key="LUCKYLION") -> bytes:
          if isinstance(key, str):
              key = key.encode("ascii")
          if isinstance(tin, bytes):
              tin = tin.decode("ascii")
          key_len = len(key)
          ciphertext = []
          for idx, character in enumerate(tin):
              ciphertext.append(int(character) + key[idx % key_len])
          return bytes(ciphertext)

For example:
000000000 becomes LUCKYLION
111111111 becomes MVDLZMJPO

Objective:
Your mission is to write a RegEx that can find these obfuscated TINs so it can be deployed into various DLP sensors. This will ensure we'll be alerted if someone or something is exfiltrating sensitive customer data.
Fortunately, your coworker wrote a script (snort.py that you can use to test your RegEx against a representative dataset. Download the script and run it with --help to get started:
python snort.py --help
    
Here's an example run:
python snort.py 'regex(_|\s+)goes_?here$'
Note the single quotes ' surrounding the RegEx. These will usually protect it from shell expansion.
  
Note: Your regex needs to avoid matching unencrypted TINs, e.g. 123456789, as there are already appliances looking for these and we don't want to create duplicate alerts! To be clear, your regex can ONLY match VAPID-encrypted TINs!
Additional Note: TINs in this context refers exclusively to SSNs and ITINs. EINs/FEINs are for employers (companies), who can't gamble. PTINs are for tax preparers and also can't be associated with gambling winnings. ATINs are for children, who sadly can't legally gamble (yet).

Tools Required:
snort.py, 
SHA256 verification hash: ff3aec78659b82907bc9f34886b785850dc3988b79b33f167de196e14e7a2d87
Python 3

Provided to solve the CTF:
RegExr, an online tool for learning Regular Expressions

Solution:
I need to start using regex more regular so I can be more comfortable.

To solve this challenge, we need to create a regular expression (RegEx) that can detect Tax Identification Numbers (TINs) that have been obfuscated. 

1. Each digit of the TIN (0-9) is converted to an integer.
2. The corresponding character from the key "LUCKYLION" (repeating if necessary) is taken and its ASCII value is added to the integer value of the TIN digit.
3. The resulting values form the obfuscated TIN.

Example Conversion
  - TIN: 000000000
  - Obfuscated: LUCKYLION (ASCII values of 'L', 'U', 'C', 'K', 'Y', 'L', 'I', 'O', 'N' added to 0)

Strategy for RegEx
To detect these obfuscated TINs, the RegEx must match patterns that result from the addition of ASCII values of the characters from "LUCKYLION" to digits (0-9).
Here is a detailed breakdown of the character ranges to include in the RegEx:
- 'L' + 0 to 'L' + 9: ASCII range for 'L' (76) to 'V' (86)
- 'U' + 0 to 'U' + 9: ASCII range for 'U' (85) to '_'
- 'C' + 0 to 'C' + 9: ASCII range for 'C' (67) to 'M' (77)
- 'K' + 0 to 'K' + 9: ASCII range for 'K' (75) to 'U' (85)
- 'Y' + 0 to 'Y' + 9: ASCII range for 'Y' (89) to 'b' (99)
- 'I' + 0 to 'I' + 9: ASCII range for 'I' (73) to 'S' (83)
- 'O' + 0 to 'O' + 9: ASCII range for 'O' (79) to 'Y' (89)
- 'N' + 0 to 'N' + 9: ASCII range for 'N' (78) to 'X' (88)

Crafting the RegEx
We'll create a RegEx to match these patterns. We know the pattern is 9 characters long, so we need to create a regular expression that accounts for the possible ranges:
"[L-V][U-_][C-M][K-U][Y-b][L-V][I-S][O-Y][N-X]"

Testing the RegEx
To test the regular expression, you would run the following command:

![image](https://github.com/thinksecurenow/CTF-Writeups/blob/main/WiCyS%202024/Defense/Images/D2%20-%20Look%20for%20Insider%20Threats.png)

FLAG: RegexXXXXXX
