In this project it is assumed that raspberry pi is connected to our home router and have 24x7
internet service. It is also assumed that telegram cli is installed on raspberry pi.
if facing any problem google can help how to install telegram on raspbery pi. 

I have connected a temperature and humidity sensor with raspberry pi and 8 main line devices using 
relay module and a webcam.

In this folder main program is action.lua
It handles the commands we give using android phone or pc from remote places.This script reads these
commands and according to these command take actions.

Pi output pin is controlled using python script which is in the device folder.temperature and humidty
sensor is also read by python script. 

Capturing photo is used by shell script. all these script is called by lua script when it receives 
appropriate commands.
