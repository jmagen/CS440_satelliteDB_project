import json
import os
import urllib2
import time
from datetime import datetime
from datetime import timedelta


key = "{INSERT KEY HERE}" #This key must be unique for each person in our group.
# create an account at https://www.n2yo.com/login/register/ to get your own key.
# Each key is limited to making 1,000 transactions per hour (the total number of transactions made within the last hour is listed in the json) 

result = []
transactions = 0
satellitecount = 0
jsonfilename = os.path.join(os.path.dirname(__file__) + "\\..\\JSON", 'n2yo_satellite_position_data.json') 
with open(jsonfilename, 'w') as outfile:
	while satellitecount <= 200: # get position data for first 200 satellites
		if(transactions >= 999): # make sure that the program does not exceed the limit of making more than 1,000 transactions in an hour
			print("Transaction limit reached. Will begin making queries again at: " + (datetime.now() + timedelta(seconds=3600)).strftime("%m/%d/%y -- %I:%M %p."))
			time.sleep(3600) #sleep for an hour
		j = urllib2.urlopen("https://www.n2yo.com/rest/v1/satellite/positions/" + `satellitecount` +"/41.702/-76.014/0/2/&apiKey=" + key)
		data = json.load(j) #decode j as json data
		transactions = data["info"]["transactionscount"]
		print(data)
		result.append(data)
		satellitecount += 1
	json.dump(result, outfile) #save to .json file
print("Satellite data saved to: " + jsonfilename)
