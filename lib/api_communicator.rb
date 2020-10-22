require 'rest-client'
require 'json'
require 'pry'

def get_data_from_api(team_name)
  # RestClient.get 'http://example.com/resource', {params: {id: 50, 'foo' => 'bar'}}
   

  # make a request to the api for specified data
  response_string = RestClient.get('https://api.collegefootballdata.com/conferences')
  response_hash = JSON.parse(response_string)
end

def web_request(url)
  response_json = RestClient.get(url)
  response_hash = JSON.parse(response_json)
  response_hash
  # result = response_hash["results"]
  # result
end

def print_result(data)
  data.each do |d|
    puts d
  end
end

def show_team_stats(team, year)
  # binding.pry
  films = get_character_movies_from_api(character)
  print_movies(films)
end

# binding.pry
0