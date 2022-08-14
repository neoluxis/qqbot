@echo off

echo "pip is installing requirements"
pip install -r requirements.txt

echo "Running the bot with python command"
python ./bot.py

echo "Bot ends"
pause