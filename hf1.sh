#!/data/data/com.termux/files/usr/bin/bash

# RUNTIME SCRIPT — Start GUI and Firefox session

# Kill previous processes
pkill -f firefox
pkill -f websockify
pkill -f Xvnc
pkill -f novnc_proxy

# Start VNC server with portrait resolution
vncserver -kill :1 >/dev/null 2>&1
vncserver :1 -geometry 720x1280 -depth 24

# Wait for X server
sleep 2

# Start noVNC proxy
cd ~/noVNC/utils
./novnc_proxy --vnc localhost:5901 > ~/novnc.log 2>&1 &

echo
echo "[*] noVNC running at: http://localhost:6080/vnc.html"
echo "[*] Launching Firefox in kiosk mode..."

# Export display and launch Firefox
export DISPLAY=:1
sleep 3
firefox --kiosk https://google.com &
pid=$!

# Wait for Firefox to exit
wait $pid

# Cleanup
echo "[*] Firefox exited. Cleaning up..."
vncserver -kill :1
pkill -f websockify
pkill -f novnc_proxy
