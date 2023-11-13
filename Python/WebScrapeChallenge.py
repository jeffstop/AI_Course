import requests
from bs4 import BeautifulSoup

url = "https://learncodinganywhere.com/"
response = requests.get(url)

soup = BeautifulSoup(response.text, 'html.parser')

title_element = soup.find('title')
if title_element:
    page_title = title_element.text
    print("Page Title: ", page_title)
else:
    print("Page title not found.")
    