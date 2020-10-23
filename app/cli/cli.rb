require 'pry'
require_relative '../../config/environment.rb'

def welcome
  puts
end

def print_games_for_team(games)
  team_games = games.map {|game| event.name}
  prompt = TTY::Prompt.new
  input = prompt.select("Which event would you like to view?", named_events)
  pastel = Pastel.new

  events.each do |event|
    if event.name == input
      puts "Name: #{pastel.cyan(event.name)}, Date: #{pastel.cyan(event.date)}, Price: #{pastel.cyan(event.price)}, Genre: #{pastel.cyan(event.genre)}"
      puts "URL: #{pastel.blue(event.url)}"
      break
    end
  end
end