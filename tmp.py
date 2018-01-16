import Adafruit_DHT
 
 
#while True:
hum, temp = Adafruit_DHT.read_retry(11, 4)
print ("Hum:{} Temp:{}".format(hum, temp))
