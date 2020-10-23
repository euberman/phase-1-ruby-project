require 'pry'
require_relative '../../config/environment.rb'

def welcome
  puts "Welcome to my CLI ruby app"
  team_menu()
end

def run
  welcome()
end

def team_menu
  prompt = TTY::Prompt.new
  input = prompt.select("What team from the Big 12 conference do you want to see the games for the 2019 season") do |menu|
    menu.choice "View games by Baylor", 1
    menu.choice "View games by Iowa State", 2
    menu.choice "View games by Kansas", 3
    menu.choice "View games by Kansas State", 4
    menu.choice "View games by Oklahoma", 5
    menu.choice "View games by Oklahoma State", 6
    menu.choice "View games by TCU", 7
    menu.choice "View games by Texas", 8
    menu.choice "View games by Texas Tech", 9
    menu.choice "View games by West Virginia", 10
  end

  case input
  when 1
    games_by_team("Baylor")
    games_menu()
  when 2
    games_by_team("Iowa State")
    games_menu()
  when 3
    games_by_team("Kansas")
    games_menu()
  when 4
    games_by_team("Kansas State")
    games_menu()
  when 5
    games_by_team("Oklahoma")
    games_menu()
  when 6
    games_by_team("Oklahome State")
    games_menu()
  when 7
    games_by_team("TCU")
    games_menu()
  when 8
    games_by_team("Texas")
    games_menu()
  when 9
    games_by_team("Texas Tech")
    games_menu()
  when 10
    games_by_team("West Virginia")
    games_menu()
  end
end

def games_by_team(team)
  games = Game.all.select do |game|
    game_list = []
    if game.home_team == team || game.away_team == team
      game_list << game
    end
    print_games(game_list)
  end
end

def print_games(games)
  prompt = TTY::Prompt.new
  input = prompt.select("Which event would you like to view?", named_events)
  pastel = Pastel.new

  games.each do |game|
    if event.name == input
      puts "Home_Team: #{pastel.cyan(game.home_team)} Away_team: #{pastel.cyan(game.away_team)}, Venue: #{pastel.cyan(game.venue_name)}, Season: #{pastel.cyan("2019")}"
      
      break
    end
  end
end