require_relative './environment'
BASE_URL = "https://api.nasa.gov/neo/rest/v1/feed"
extention = "?start_date=2020-11-1&api_key=#{ENV['API_KEY']}"

uri = URI(BASE_URL + extention)
resp = Net::HTTP.get(uri)
formatted_resp = JSON.parse(resp)
binding.pry