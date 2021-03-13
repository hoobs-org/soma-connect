# SOMA Connect
This is the application running on the SOMA Connect bridges. You can download and install it directly on your Raspberry Pi.

## Installation
We publish this to our repository server. So first you need to add the HOOBS repository to your sources.

```
wget -qO- https://support.hoobs.org/setup | sudo -E bash -
```

Now you can install SOMA Connect.

```
sudo apt install soma-connect
```

## Add SOMA Connect to Homekit
1. Download and install the iOS app [Smart Shades](https://apps.apple.com/us/app/smart-shades/id1016406862) on your iPhone / iPad
2. Use the Smart Shades app to calibrate your shades motor
3. From the left hand menu, click on SOMA Connect inside the Smart Shades App
4. Hold your iPhone / iPad close to your Raspberry Pi
5. When prompted, select your home wifi network and input the wifi password (if you tried to add this to Homekit before, you must click Empty Homekit Cache)
6. (Optional) Write down the MAC Address prompted if you want to configure it to work with Alexa later
7. Exit setup then go into the Home App
8. Click Add Accessory then click Don't have a Code or Can't Scan?
9. You should see the smart shades accessory appear there. Click on it then enter the following code: **031-45-154**
10. Configure the name and room of the accessory. 
  
## Building
This is a binary release, so the build process simply creates the .deb package. Since we sign our packages, you will need to clone our security repository to get access to our GPG keys.

```
cd ~/HOOBS
git clone https://github.com/hoobs-org/security.git
```

> Note these files are protected. You will need to login to clone. You also need to be a member of the HOOBS orginization.

Now you need to import the GPG keys to your key chain.

```
cd ~/HOOBS
gpg --import ./security/repo/publickey.gpg
gpg --allow-secret-key-import --import ./security/repo/privatekey.gpg
```

Now check your keys to see if the hoobs key is there.

```
gpg --list-keys | grep hoobs
```

The output should look something like this.
```
uid [ultimate] hoobs <info@hoobs.org>
```

## Legal
HOOBS and the HOOBS logo are registered trademarks of HOOBS Inc. Copyright (C) 2020 HOOBS Inc. All rights reserved.
