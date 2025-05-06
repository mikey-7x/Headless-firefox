#!/data/data/com.termux/files/usr/bin/bash

# SETUP SCRIPT — One-time installation and configuration

echo "[*] Updating Termux..."
pkg update -y && pkg upgrade -y

echo "[*] Installing required packages..."
pkg install -y wget git tigervnc python firefox

echo "[*] Cloning noVNC..."
git clone https://github.com/novnc/noVNC ~/noVNC

echo "[*] Creating VNC xstartup file..."
mkdir -p ~/.vnc

cat > ~/.vnc/xstartup << 'EOF'
#!/data/data/com.termux/files/usr/bin/sh
aterm -geometry 80x24+10+10 -ls &
twm &
EOF

chmod +x ~/.vnc/xstartup

echo "[*] Setup complete."
echo "Now run: ./hf.sh to start XFCE with noVNC in portrait fullscreen mode."
