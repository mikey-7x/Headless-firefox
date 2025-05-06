# ⚡ Headless Firefox on Android via Termux + noVNC

**Run a headless computerised Firefox browser on your Android device using Termux with noVNC access!**  
Includes two modes: lightweight minimal desktop, and XFCE4 full desktop – both ready for headless access.

---

**👁️Practical video**
[![Watch the video](https://img.youtube.com/vi/wFQtvse5LRA/0.jpg)](https://youtu.be/wFQtvse5LRA)

---

## 📁 Repository Contents

| File       | Purpose                                                                 |
|------------|-------------------------------------------------------------------------|
| `HF.sh`    | Complete installation and configuration for minimal lightweight setup   |
| `HF1.sh`   | Complete installation and configuration for XFCE4 full desktop setup     |
| `hf.sh`    | Runs Headless Firefox (after `HF.sh` is installed)                      |
| `hf1.sh`   | Runs Headless Firefox with XFCE4 (after `HF1.sh` is installed)          |
| `README.md`| This documentation                                                      |

---

## ✨ Features

- Firefox in headless mode with VNC + noVNC (browser-based control)
- Works entirely on Android via Termux (no root required)
- Two modes:
  - Minimal desktop with `xterm + twm`
  - Full desktop with `XFCE4`
- Access from another device using local WiFi
- Touch-friendly via noVNC
- Minimal mode is highly flexible and you can access your terminal (like termux's terminal) and Firefox Headlessly,it is suitable in landscape mode
- Full desktop mode not include any terminal but it specially designed for access Headless firefox with potrait mode 

---

## ⚙️ Requirements

- Android device (2GB+ RAM recommended)
- Termux (preferably from F-Droid)
- Internet (for setup)
- Two devices connected to the **same WiFi network**

---

## 🔧 Installation Instructions

### 1. Install Termux (from F-Droid)
[F-Droid Termux Link](https://f-droid.org/packages/com.termux/)

### 2. Install and Configure

Use either of the following scripts depending on the setup you prefer:

#### ➤ Lightweight (xterm + twm):

```bash
wget https://raw.githubusercontent.com/mikey-7x/Headless-firefox/refs/heads/main/HF.sh
wget https://raw.githubusercontent.com/mikey-7x/Headless-firefox/refs/heads/main/hf.sh
chmod +x HF.sh hf.sh
./HF.sh
```

This will:

Install required packages (Firefox, TigerVNC, noVNC, etc.)

Then use:

```
./hf.sh
```
---

➤ XFCE4 Full Desktop:

```
wget https://raw.githubusercontent.com/mikey-7x/Headless-firefox/refs/heads/main/HF1.sh
wget https://raw.githubusercontent.com/mikey-7x/Headless-firefox/refs/heads/main/hf1.sh
chmod +x HF1.sh hf1.sh
./HF1.sh
```

This will:

Install XFCE4 and dependencies

Then use:

```
./hf1.sh
```
---

🌐 Accessing Firefox via noVNC

1. Find your Android device's IP:
   
```
ip a
```
Look for wlan0, e.g., 192.168.1.42

2. Open a browser on another device (connected to the same WiFi)
Go to:

http://<android-ip>:6080

Example:

http://192.168.1.42:6080

🍃The "hf.sh or hf1.sh" script also gives a link/ip.using this you will able to share your Headless firefox.so you can skip above ip finding steps 

---

✋ Touch & noVNC Usage Tips

Right-click: Two-finger tap

Fullscreen: Tap the noVNC menu > Enable fullscreen

Drag & Drop: Tap and hold, then move

Show Keyboard: Tap keyboard icon from top menu

---

⚠️ Important Notes

You must use the same WiFi/router between Android and the device accessing Firefox.

Avoid mobile mobile data – this is a LAN-based solution.

you can also use common hotspot for this project.

Firefox may take a few seconds to appear inside the VNC view.

hf.sh and hf1.sh only work after HF.sh or HF1.sh has been run once.

---

☑️ One-Line Quick Setup Example

For XFCE4 Full Setup:

```
pkg update && pkg install git -y && git clone https://github.com/mikey-7x/Headless-firefox && cd Headless-firefox && chmod +x HF1.sh hf1.sh && ./HF1.sh
```

Then to run Firefox:

```
./hf1.sh
```

---

⚖️ License & Acknowledgements

noVNC: Copyright © noVNC team
Licensed under Apache License 2.0

XFCE, Firefox, TWM, aterm are all open-source projects.

We do not claim ownership of any of these tools. This is a scripted integration for ease of use.

---

✅ Tested On

Android 13 (MIUI & AOSP)

Termux v118+

Firefox ESR & latest

Devices with 2GB+ RAM

---


📜License

This project is open-source and available under the [MIT License](LICENSE).

---

☕ Credits

Developed with  ❤️ by **[mikey-7x](https://github.com/mikey-7x)** 🚀🔥  

Feel free to star the repo or contribute!

---
