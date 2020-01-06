# fix_uavtech_json

Fix UAV Tech's Betaflight Blackbox Explorer settings JSON file.

UAV Tech - https://www.youtube.com/user/spatzengr - has a Betaflight Blackbox Explorer (BBE) settings JSON file on his Google Drive - https://tiny.cc/uavtech - in the directory "BBE Trace Template". It's named "UAVtech BF.json".

Unfortunately, it does not import properly into the latest 3.x version of BBE because the format is slightly "inverted". This script reformats UAV Tech's JSON file into an acceptable format.

Command Line Usage:
```
./fix_uavtech_json.rb "UAVtech BF.json" > fixed-settings.json
```
