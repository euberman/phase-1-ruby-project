require_relative '../config/environment'


conferences = web_request('https://api.collegefootballdata.com/conferences')

teams = web_request('https://api.collegefootballdata.com/teams')

# puts 'College Teams'
