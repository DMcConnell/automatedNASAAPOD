import requests
import urllib
import sys
from datetime import date

ENDPOINT = "https://api.nasa.gov/planetary/apod"

key = "cqSESRj48zUZpMRZcoqYJza0PRiZumAbomANiwoj"

PARAMS = {  "api_key":key,
            "hd":True}

r = requests.get(url = ENDPOINT, params= PARAMS)

data = r.json()
img = data["hdurl"]

today = date.today()
dateString = today.strftime("%b-%d-%Y")

title = dateString + "_" + img[img.rfind("/")+1:]
urllib.urlretrieve(img, sys.argv[1] + "/" + title)