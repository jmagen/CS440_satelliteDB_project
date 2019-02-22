import os
import urllib2
from bs4 import BeautifulSoup


csv = os.path.join(os.path.dirname(__file__) + "\\..\\Data", 'satellites_by_category.csv')
f = open(csv, "w")

headers = "satname, satId, intl_code, launchDate, period, category"
f.write(headers)


url = "https://www.n2yo.com/satellites/?c=";
for i in range(1,52): #iterate through all categories except Amateur Radio
	if i == 18: continue
	file = urllib2.urlopen(url + `i`)
	html = file.read()
	file.close()

	soup = BeautifulSoup(html)

	containers = soup.findAll("tr")

	category = "get from title"

	for title in soup.findAll("h1"):
		category = title.string.replace(" SATELLITES", "") #Get the name of the satellite category

	print category

	tables = 0
	for table in soup.findAll("table"):
		tables += 1
		tr_count = 0
		if tables == 2:
			for tr in table.findAll("tr"):
				if tr_count > 0 : #skip headers
					td_count = 0
					for td in tr.findAll("td"):
						if td_count == 5:
							f.write(category)
							break
						#print(td.string)
						if td.string is None: f.write("NULL,")
						else: f.write(td.string.replace(",", "") + ", ")
						td_count += 1
					f.write("\n")
				tr_count += 1
f.close()
