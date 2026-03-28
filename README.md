CS2 Auto Accept Tool

A lightweight automation tool that automatically detects and accepts matchmaking in Counter-Strike 2 (CS2), ensuring you never miss a queue pop.

🚀 Features
✅ Automatically detects match acceptance prompt
✅ Instant auto-accept (no delay)
✅ Lightweight and low resource usage
✅ Runs in the background
✅ Simple setup and execution
🛠️ Tech Stack
Python
OpenCV (image detection) / or screen detection method (edit based on what you used)
PyAutoGUI (or input automation library you used)
📦 Installation
git clone https://github.com/yourusername/cs2-auto-accept.git
cd cs2-auto-accept
pip install -r requirements.txt
▶️ Usage
Launch CS2
Run the script:
python main.py
Queue for a match
The tool will automatically accept when a match is found
⚙️ How It Works

The tool continuously monitors your screen for the match accept button using image recognition (or pixel detection). Once detected, it simulates a mouse click to accept the match instantly.

⚠️ Disclaimer

This tool is intended for educational purposes only.
Use at your own risk. Automation tools may violate game terms of service.

📌 Future Improvements
GUI interface
Custom detection regions
Adjustable delay/randomization
Multi-resolution support
👤 Author

Khang Truong
Cyber Security Student @ Deakin University
