import requests
from bs4 import BeautifulSoup


def scrape_character(character):
	dick_char = {}

	url = "https://lotr.fandom.com/wiki/" + character
	page = requests.get(url)
	soup = BeautifulSoup(page.content, "html.parser")

	# %%
	name = soup.find("h1")
	name = name.text
	name = name.replace('\n', '')
	name = name.replace('\t', '')
	dick_char["name"] = name
	print(name)
	# %%
	img = soup.find(class_="pi-image-thumbnail")
	img_src = img["src"]
	print(img_src)
	dick_char["img_src"] = img_src

	# %%
	# dob = soup.find(data-source="birth")
	dob = soup.select('div[data-source="birth"]')
	# print(dob)
	print(dob[0].div.text)
	dick_char["dob"] = dob[0].div.text

	race = soup.select('div[data-source="race"]')
	race[0].div.text
	dick_char["race"] = race[0].div.text

	return dick_char

#
# d = scrape_character("Gollum")
# print(d)
#
# d = scrape_character("Aragorn_II_Elessar")
# print(d)
