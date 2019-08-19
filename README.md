# soma-connect

This is the application running on the SOMA Connect bridges. You can download and install it directly on your raspberry pi.

#Installation Instructions

  Download and save release file 

  ```sudo wget https://github.com/hoobs-org/soma-connect/releases/download/1.8.37/soma-connect_1.8.37_armhf.deb -O soma-connect.deb```
  
  Install package
  
  ```sudo dpkg -i soma-connect.deb```
  
  Application must be run as service. Here's how to create and start the service:
  
  1. Create service file
  
  ```sudo nano /etc/systemd/system/soma-connect.service```
  
  2. Paste the following in it then press ctrl+x to exit nano and press y to save file changes:
  
  ```
  [Unit]
  Description=Soma-Connect Server
  After=syslog.target network-online.target

  [Service]
  Type=simple
  ExecStart=/usr/lib/soma-connect/soma-connect
  Restart=on-failure
  RestartSec=10
  KillMode=process

  [Install]
  WantedBy=multi-user.target
  ```
   3. Reload daemon
   
   ```sudo systemctl daemon-reload```
   
   4. Enable service
   
   ```sudo systemctl enable soma-connect```
   
   5. Start service
   
   ```sudo systemctl start soma-connect```
   
   To check the status of the service you can type ```systemctl status soma-connect```
   To view the logs from the application you can type ```journalctl -f -u soma-connect```
   
   
 #Add Soma Connect to Homekit
 
  1. Download and install the iOS app [Smart Shades](https://apps.apple.com/us/app/smart-shades/id1016406862) on your iPhone / iPad
  
  2. Use the Smart Shades app to calibrate your shades motor
  
  3. From the left hand menu, click on SOMA Connect inside the Smart Shades App
  
  4. Hold your iPhone / iPad close to your Raspberry Pi
  
  5. When prompted, select your home wifi network and input the wifi password
  
  6. (Optional) Write down the MAC Address prompted if you want to configure it to work with Alexa later
  
  7. Exit setup then go into the Home App
  
  8. Click Add Accessory then click Don't have a Code or Can't Scan?
  
  9. You should see the smart shades accessory appear there. Click on it then enter the following code: **031-45-154**
  
  10. Configure the name and room of the accessory. 
  
  
  
  
