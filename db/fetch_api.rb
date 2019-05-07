require 'rest-client'
require 'json'

def fetch_api
  api_key = '580023c18b06bdf56399afd6824c119e'
  resource_url = 'https://api.betterdoctor.com/2016-03-01/doctors?query=mental&location=37.773%2C-122.413%2C100&user_location=37.773%2C-122.413&skip=0&limit=10&user_key=' + api_key;

  raw_response = RestClient.get(resource_url)
  json_response = JSON.parse(raw_response)
end
