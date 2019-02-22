import os
import urllib2
from bs4 import BeautifulSoup
import pandas

agencyData = os.path.dirname(__file__) + "\\..\\Data\\AgencyData.xlsx"
agencies = pandas.read_excel(agencyData, sheet_name=0)
agencyCodes = agencies['Code'].tolist()


csv = os.path.join(os.path.dirname(__file__) + "\\..\\Data", 'satellites_by_agency.csv')
f = open(csv, "w")

headers = "satname, satId, intl_code, launchDate, period, agency"
f.write(headers)


url = "https://www.n2yo.com/satellites/?c=";
countryCode = "";
countryParam = "&t=country";
for code in agencyCodes: #iterate through all agency codes
	file = urllib2.urlopen(url + code + countryParam)
	html = file.read()
	file.close()

	soup = BeautifulSoup(html)

	containers = soup.findAll("tr")

	organization = "get from title"

	for title in soup.findAll("h3"):
		organization = title.string #Get the organization/country name

	print organization

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
							f.write(organization)
							break
						#print(td.string)
						if td.string is None:
							td_count +=1
							continue
						else: f.write(td.string.replace(",", "") + ", ")
						td_count += 1
					f.write("\n")
				tr_count += 1
f.close()
