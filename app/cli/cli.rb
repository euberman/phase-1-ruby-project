require 'pry'
require 'awesome_print'
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

def games_by_team(team_name)
  team = Team.first
  games = Matchup.where('team_id', team.id)
  # games = Game.all.select do |game|
  #   game.home_team == team || game.away_team == team
  # end
  print_games(games)
end

def print_games(games)
  games.each do |matchup|
    ap "Team: #{pastel.cyan(matchup.team.name)} Opponent: #{pastel.cyan(matchup.opponent_name)}, Venue: #{pastel.cyan(matchup.venue_name)}, Season: #{pastel.cyan('2019')}"
  end
  team_menu()
end