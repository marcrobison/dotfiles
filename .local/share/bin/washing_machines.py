from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time
import env

options = Options()
options.add_argument("--headless")
driver = webdriver.Firefox(options=options)
driver.get(env.washing_machine_url)
#time.sleep(1)
table = driver.find_element(By.TAG_NAME, "tbody")

elements = table.text.splitlines()
print(elements[2])
print(elements[6])

driver.quit()
