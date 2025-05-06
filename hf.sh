#!/data/data/com.termux/files/usr/bin/bash

# RUNTIME SCRIPT — Start GUI and Firefox session

# Kill old processes if any
pkill -f websockify
pkill -f Xvnc
pkill -f novnc_proxy
pkill -f firefox

# Launch Termux-X11 GUI
am start --user 0 -n x11.termux/.MainActivity >/dev/null 2>&1

# Start VNC server
vncserver :1

# Wait for X to be ready
sleep 2

# Start noVNC proxy
cd ~/noVNC/utils
./novnc_proxy --vnc localhost:5901 > ~/novnc.log 2>&1 &

echo
echo "noVNC running at: http://localhost:6080/vnc.html"
echo "Now launching Firefox..."

# Launch Firefox in DISPLAY=:1
export DISPLAY=:1
#surf https://google.com &
#xfce4 &
sleep 2
firefox --kiosk https://google.com &
pid=$!

# Wait for Firefox to close
wait $pid

# After Firefox closes
echo "[*] Firefox exited. Cleaning up..."
vncserver -kill :1
pkill -f websockify
pkill -f novnc_proxy
