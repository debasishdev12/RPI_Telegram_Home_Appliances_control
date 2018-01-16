function on_msg_receive (msg)
      if msg.out then
          return
      end
      
      if (string.lower(msg.text)=='ping') then
         send_msg (msg.from.print_name, 'pong', ok_cb, false)
      end
      
      if (string.lower(msg.text)=='about') then
         send_msg (msg.from.print_name, 'Lua script powered by Debasish Dev,RUET,EEE-12', ok_cb, false)
      end
      
      if (string.lower(msg.text)=='help') then
         send_msg (msg.from.print_name, 'commands are- device1 on,device1 off,device2 on,device2 off,device3 on,device3 off,device4 on,device4 off,device5 on,device5 off,device6 on,device6 off,device7 on,device7 off,device8 on,device8 off,photo,temp,about', ok_cb, false)
      end
      
      if (string.lower(msg.text)=='temp') then
         os.execute('sudo ./tmp.sh')
         logfile = io.open("/home/pi/temp_data","r")
         logstring = logfile:read("*all")
         send_msg (msg.from.print_name, logstring , ok_cb, false)
      end
      
      if (string.lower(msg.text)=='photo') then
	 os.execute('/home/pi/camera/camera.sh')
	 send_photo (msg.from.print_name, '/home/pi/camera/image.jpg',ok_cb,false)
      end
      
      if (string.lower(msg.text)=='device1 on') then
	 os.execute('sudo python /home/pi/device/device1_on.py')
	 send_msg (msg.from.print_name, 'Device 1 turned on', ok_cb, false)
      end
      
      if (string.lower(msg.text)== 'device1 off') then
         os.execute('sudo python /home/pi/device/device1_off.py')
         send_msg (msg.from.print_name, 'Device 1 turned off', ok_cb, false)
      end

      if (string.lower(msg.text)=='device2 on') then
         os.execute('sudo python /home/pi/device/device2_on.py')
         send_msg (msg.from.print_name, 'Device 2 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device2 off') then
         os.execute('sudo python /home/pi/device/device2_off.py')
         send_msg (msg.from.print_name, 'Device 2 turned off', ok_cb, false)
      end

      if (string.lower(msg.text)=='device3 on') then
         os.execute('sudo python /home/pi/device/device3_on.py')
         send_msg (msg.from.print_name, 'Device 3 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device3 off') then
         os.execute('sudo python /home/pi/device/device3_off.py')
         send_msg (msg.from.print_name, 'Device 3 turned off', ok_cb, false)
      end

      if (string.lower(msg.text)=='device4 on') then
         os.execute('sudo python /home/pi/device/device4_on.py')
         send_msg (msg.from.print_name, 'Device 4 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device4 off') then
         os.execute('sudo python /home/pi/device/device4_off.py')
         send_msg (msg.from.print_name, 'Device 4 turned off', ok_cb, false)
      end
      
      if (string.lower(msg.text)=='device5 on') then
         os.execute('sudo python /home/pi/device/device5_on.py')
         send_msg (msg.from.print_name, 'Device 5 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device5 off') then
         os.execute('sudo python /home/pi/device/device5_off.py')
         send_msg (msg.from.print_name, 'Device 5 turned off', ok_cb, false)
      end

      if (string.lower(msg.text)=='device6 on') then
         os.execute('sudo python /home/pi/device/device6_on.py')
         send_msg (msg.from.print_name, 'Device 6 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device6 off') then
         os.execute('sudo python /home/pi/device/device6_off.py')
         send_msg (msg.from.print_name, 'Device 6 turned off', ok_cb, false)
      end

      if (string.lower(msg.text)=='device7 on') then
         os.execute('sudo python /home/pi/device/device7_on.py')
         send_msg (msg.from.print_name, 'Device 7 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device7 off') then
         os.execute('sudo python /home/pi/device/device7_off.py')
         send_msg (msg.from.print_name, 'Device 7 turned off', ok_cb, false)
      end

      if (string.lower(msg.text)=='device8 on') then
         os.execute('sudo python /home/pi/device/device8_on.py')
         send_msg (msg.from.print_name, 'Device 8 turned on', ok_cb, false)
      end

      if (string.lower(msg.text)=='device8 off') then
         os.execute('sudo python /home/pi/device/device8_off.py')
         send_msg (msg.from.print_name, 'Device 8 turned off', ok_cb, false)
      end
end
   
function on_our_id (our_id)
end
   
function on_secret_chat_created (peer)
end
   
function on_user_update (user, what_changed)
end
   
function on_chat_update (user, what_changed)
end
   
function on_get_difference_end ()
end
   
function on_binlog_replay_end ()
end
