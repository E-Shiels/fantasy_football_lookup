require_relative "./player.rb"
class CLI
  def call
    Player.scrape_players
    welcome
    menu
  end

  def welcome
    puts "Welcome to FantasyFootballLookup. This Ruby gem uses data from www.FantasyPros.com."
  end

 def menu
  input = nil
  while input != 'exit'
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Type top-25, top-50, top-100, or top-all to see a list of the top ranked players. \nTo search for a specific player, type search and press enter. Then, type the players name and press enter again. \nType explain for an explanation of the information presented in this program. \nTo exit, type exit"
    input = gets.strip
    if input == 'top-25' || input == 'top-50' || input == 'top-100' || input == 'top-all'
      puts 'This worked!'
    elsif input == 'search'
      puts 'This worked too!'
    elsif input == 'explain'
      puts "A players rank is their overall rank. A players position rank is their ranking in their position. RB12 means that player is the 12th highest-ranked running back.\nA player doesnt play during their teams bye week.\nAverage Draft Pick is the pick when a player is selected on average and is aggregated from a number of sources.\nRank vs. Average Draft Position compares the players consensus rank to their average draft pick.\n+3 means that a player is ranked 3 positions above their average draft pick. -5 means that a player is ranked 5 positions below their average draft pick."
    elsif input == 'exit'
     puts "Thank you for using the FantasyFootballLookup Ruby CLI gem. The data was scraped from https://www.fantasypros.com/. \nYou can view the gem source code at https://github.com/E-Shiels/fantasy_football_lookup. "
    else
      puts 'I am not sure what you want to do. Please try again.'
    end
  end
  end

end
cli = CLI.new
cli.call
