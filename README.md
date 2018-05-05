# Nimiq Client Install Script

## Windows with Subsystem for Linux

Follow the below guide to install the Windows Subsystem for Linux (Ubuntu). 

https://docs.microsoft.com/en-us/windows/wsl/install-win10

## Sudo user

Follow the below guide and create a user with sudo access.

https://www.howtoforge.com/tutorial/sudo-beginners-guide/

## How-to

When the WLS installation is complete and user created with sudo access, **login as the new user**.

The script can be started by running the below command.

bash -c "$(curl -o - https://raw.githubusercontent.com/Bhlynd/Nimiq-Install-Script/master/nimiq-client-install.sh)"

or 

bash -c "$(wget -O - https://raw.githubusercontent.com/Bhlynd/Nimiq-Install-Script/master/nimiq-client-install.sh)"

Please note, during the installation process the script will request you to enter settings for the client and to run escalated privileges (sudo).

**DO NOT RUN THIS AS ROOT**

When completed, you can start the Nimiq mining client by typing **./start**. To exit the miner press **Ctrl-C**.

If you need to change any settings, you can do this by editing the start file.

OR

Run the below command to automate the process of editing the start file.

bash -c "$(curl -o - https://raw.githubusercontent.com/Bhlynd/Nimiq-Install-Script/master/nimiq-client-reconfigure.sh)"

Have fun :)

## Credits

@ryan-rowland

## Donations

If this script was useful and you want to make a donation, feel free to send your NIM donation to the below NIM wallets.

@Bhlynd NQ84 GF4Y PJJQ S92K 3S9L 39N1 V2QE 76EJ 0635

@ryan-rowland NQ35 C04J 3NDF QV2A FHK1 F15U XSFM DAJP DHAV

## License

MIT License