import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(6,GPIO.OUT)
GPIO.output(6,GPIO.HIGH)

