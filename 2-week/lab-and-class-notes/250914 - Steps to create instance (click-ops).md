
**EC2 Construction**
- always start with SG's

Some notes:
1. Log into ASW

2. Go to Security Groups on side menu, Create security group

3. Go to instance, Name instance, skip down to Key Pair

4. Go to Key Pair, create new Key Pair, and rename it the name of your instance.

5. Go to Network Settings, select existing security group you are using, make sure it is the security group by checking last 4 characters to confirm.

6. Next skip down to Advance Details, then User Data section, copy EC2 script and paste into the User Data section. LAUNCH INSTANCE

7. Once successfully launched, click on link in green bar. Go to Public DNS and COPY and paste link to chat.

8. Make sure to type http:// (before links)

9. If it does not work, make sure you have the correct security group selected. If adding inbound rules when creating new security group, be sure to selected HTTP for TYPE, Anywhere IPV4, and Website for descriptions.

10. Don’t have instances in different regions. That could complicate the process and probably won’t launch your page depending on which EC2 script you are using.
