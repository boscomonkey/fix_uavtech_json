#!/usr/bin/env ruby

# UAV Tech - https://www.youtube.com/user/spatzengr - has a Betaflight
# Blackbox Explorer (BBE) settings JSON file on his Google Drive -
# https://tiny.cc/uavtech - in the directory "BBE Trace
# Template". It's named "UAVtech BF.json".
#
# Unfortunately, it does not import properly into the latest 3.x
# version of BBE because the format is slightly "inverted". This
# script reformats UAV Tech's JSON file into an acceptable format.
#
# Usage: ./fix_uavtech_json.rb "UAVtech BF.json" > fixed-settings.json

require 'json'

str = ARGF.read
settings = JSON.parse str

# UAV Tech's BBE settings JSON format is an array of hashes. Each hash
# has 2 keys: "graphConfig", & "title". All we need to do is to
# collect the values associated with all "graphConfig" keys into an
# array, and write that array as the values to the output JSON.
#
# Ignoring "title" for the time being.

graph_configs = settings.map { |hsh| hsh['graphConfig'] }
output = { 'graphConfig' => graph_configs }

puts JSON.pretty_generate(output)
