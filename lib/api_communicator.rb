require 'rest-client'
require 'json'
require 'pry'

def get_game_data_from_api
  response = RestClient.get("https://api.collegefootballdata.com/games?year=2019&seasonType=regular&conference=b12")
  JSON.parse(response.body)
end

def get_team_data_from_api
  response = RestClient.get("https://api.collegefootballdata.com/teams?conference=b12")
  JSON.parse(response.body)
end

def get_data_from_api(subject)
  # RestClient.get 'http://example.com/resource', {params: {id: 50, 'foo' => 'bar'}}
  # make a request to the api for specified data
  response_string = RestClient.get("https://api.collegefootballdata.com/games?year=2019&seasonType=regular&conference=b12")
  JSON.parse(response_string)
end

def web_request(url)
  response_json = RestClient.get(url)
  response_hash = JSON.parse(response_json)
  print_results(response_hash)
end

def print_result(data)
  data.each do |d|
    puts d
  end
end

# binding.pry
0