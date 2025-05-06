# ⚡ Headless Firefox for Android via Termux + noVNC

**Run Headless Firefox browser on Android using Termux with VNC and noVNC integration!**  
Lightweight and functional – two modes: minimal terminal-based and XFCE4 full desktop support.

---

## ✳️ Features
- Launch Firefox in headless mode inside Termux
- Access via noVNC in any modern browser
- Two modes:  
  `HF.sh` – super lightweight terminal-based  
  `HF1.sh` – XFCE4 desktop-based, still light
- Works over local WiFi – access from any device on the same network
- Touch support: fullscreen, right-click, drag & drop (via gestures)

---

## 📁 Repository Contents

| File         | Description                                                                 |
|--------------|-----------------------------------------------------------------------------|
| `HF.sh`      | Headless Firefox with minimal xterm and twm (ultra lightweight)             |
| `hf.sh`      | Alias for `HF.sh`                                                           |
| `HF1.sh`     | Headless Firefox with XFCE4 desktop environment                             |
| `hf1.sh`     | Alias for `HF1.sh`                                                          |
| `README.md`  | This file                                                                   |

---

## ⚙️ Requirements

- Android device
- Termux (from F-Droid recommended)
- Same WiFi network for both Android and client device
- Recommended: at least 2GB RAM

---

## 🔧 Installation Guide (Android - Termux)

**1. Install Termux & Packages**

```bash
pkg update && pkg upgrade -y
pkg install x11-repo
pkg install firefox tigervnc noVNC xfce4 twm aterm nano wget curl -y
```
2. Clone this repo

```bash
git clone https://github.com/mikey-7x/Headless-firefox
cd Headless-firefox
chmod +x HF*.sh hf*.sh
```
---

🚀 Running the Scripts

➤ Minimal Setup (HF.sh / hf.sh)

1. Setup xstartup script:

```
mkdir -p ~/.vnc
nano ~/.vnc/xstartup
```
Paste this:

```
#!/data/data/com.termux/files/usr/bin/sh
aterm -geometry 80x24+10+10 -ls &
twm &
```

2. Save and exit (CTRL+O, Enter, CTRL+X)

3. Run the script:

```
./HF.sh
```
---

➤ XFCE4 Setup (HF1.sh / hf1.sh)

1. Setup xstartup script:

```
mkdir -p ~/.vnc
nano ~/.vnc/xstartup
```
Paste this:

```
#!/data/data/com.termux/files/usr/bin/bash
export DISPLAY=:1
xrdb $HOME/.Xresources
xfce4-session &
```

2. Save and exit (CTRL+O, Enter, CTRL+X)

3. Run the script:

```
./HF1.sh
```
---

🌐 Access via Browser (noVNC)

1. Get your Android IP:

ip a

Look for wlan0 section, e.g. 192.168.1.42

2. On another device (same WiFi), open browser and go to:

http://<android-ip>:6080

Example:

http://192.168.1.42:6080

3. noVNC Tips:

Fullscreen mode: Tap the noVNC menu button (top-left), select "Fullscreen"

Right-click: Two-finger tap

Drag/Drop: Tap+Hold or drag with one finger

Keyboard: Tap keyboard icon on top

---

⚠️ Important Notes

BOTH Android and viewer device must be on the SAME WiFi network.

Firefox may take a few seconds to start inside XFCE or xterm.

Avoid mobile data; only works on local network (WLAN).

---

📥 One-line Setup Script

Want to install everything in one step? Try:

pkg update && pkg install git -y && git clone https://github.com/mikey-7x/Headless-firefox && cd Headless-firefox && chmod +x HF*.sh hf*.sh

Then run the script of your choice (./HF.sh or ./HF1.sh).


---

⚖️ Licenses & Credits

noVNC: Copyright © noVNC team
Licensed under Apache License 2.0

This project uses open-source software (Firefox, TigerVNC, XFCE, TWM, aterm)

Respect software licenses and do not misuse

---

☕ Support

If you like this project, feel free to star the repo, fork, or contribute!

---

✅ Tested On

Android 13 (MIUI / Lineage)

Termux (v118+) from F-Droid

Firefox ESR / Latest

Devices with 2GB+ RAM

---

📬 Contact

Made by mikey-7x
GitHub: github.com/mikey-7x

---

Let me know if you'd like a styled banner, icons, or visual tutorial as part of this README too.

