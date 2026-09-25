from pylibrelinkup import PyLibreLinkUp
from pylibrelinkup.api_url import APIUrl
import creds

client = PyLibreLinkUp(email=creds.email, password=creds.key, api_url=APIUrl.FR)
client.authenticate()
patient_list = client.get_patients()
patient = patient_list[0] # get the first patient (me)
latest = client.latest(patient).value
print(round(latest))
