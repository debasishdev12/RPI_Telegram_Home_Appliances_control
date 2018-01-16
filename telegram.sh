#! /bin/sh

### BEGIN INIT INFO
# Provides:          telegram
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Simple script to start a program at boot
### END INIT INFO
cd tg
bin/telegram-cli -k tg-server.pub -W -s action.lua
