GAE and Heroku unload apps after a certain amount of inactivity. This causes a long (up to ~15 second) delay while GAE/Heroku load the app up.

This script keeps apps running forever!

note: this script is not liable for any breaches of ToS -- use at your own risk

# Install
Edit `sites` to insert your own app URLs. Blank lines and lines starting with `#` are ignored.

Open your crontab file with `crontab -e` and insert the following line (making changes where necessary):

    0,30 * * * * python /path/to/keep-it-running/run.py > /dev/null 2>&1