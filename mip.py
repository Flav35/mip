#!/usr/bin/python
import os,requests,json

url = "http://ip-api.com/json/?fields=query,city,lat,lon"
asciiworld_bin = "/app/asciiworld/asciiworld"
try:
  req = requests.get(url)
  data = json.loads(req.content)
except Exception as e:
  print(e)

filename = "asciiworld-latlong"
tmp_file = open(filename,"w")
tmp_file.write("points\n")
tmp_file.write(str(data['lat'])+" "+str(data['lon']))
tmp_file.close()

os.system(asciiworld_bin+" -T -sS -c 8 -l "+str(filename)+" -t '"+str(data['city'])+" --> "+str(data['query'])+"'")
