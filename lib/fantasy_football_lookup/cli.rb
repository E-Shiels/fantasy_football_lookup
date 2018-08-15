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
    puts "Type top-25, top-50, top-100, or top-all to see a list of the top ranked players. \nTo search for a specific player, type search and press enter. Then, type the players name and press enter again. \nType explain for an explanation of the information presented in this program. \nTo exit, type exit"
    input = gets.strip

    if input == 'top-25' || input == 'top-50' || input == 'top-100' || input == 'top-all'
      puts 'This worked!'
    elsif input == 'search'
      puts 'This worked too!'
    elsif input == 'explain'
      puts 'EXPLANATION'
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