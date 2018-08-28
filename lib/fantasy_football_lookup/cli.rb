class CLI
  def call
    Scraper.scrape_players
    welcome
    menu
  end

  def welcome
    puts "Welcome to FantasyFootballLookup. This Ruby gem uses data from www.FantasyPros.com."
  end

  def player_output(player)
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Name: #{player.name} | Team: #{player.team} | Position: #{player.position} | Bye Week: #{player.bye_week}"
    puts "Rank: #{player.rank} | Position Rank: #{player.position_rank} | Best Rank: #{player.best_rank} | Worst Rank: #{player.worst_rank}"
    puts "Average Rank: #{player.average_rank} | Average Draft Position: #{player.average_draft_position} | Average Draft Position vs. Rank: #{player.adp_vs_rank}"
  end

 def menu
  input = nil
  while input != 'exit'
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Type top-25, top-50, top-100, or top-all to see a list of the top ranked players. \nTo search for a specific player, type search and press enter. Then, type the players name and press enter again. \nType explain for an explanation of the information presented in this program. \nTo exit, type exit"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    input = gets.strip
    if input == 'top-25' || input == 'top-50' || input == 'top-100'
        n = input.gsub("top-", "").to_i
        Player.all.first(n).each do |player|
          player_output(player)
        end
    elsif input == "top-all"
      Player.all.each do |player|
        player_output(player)
      end
    elsif input == 'search'
      puts 'Please enter the name of the player you would like to search for:'
      player_search_input = gets.strip
      @search_results = Player.find_player(player_search_input)
      if Player.player_exists?(player_search_input)
        @search_results.each { |player| player_output(player)}
    else
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "No player was found with that name. Please check your spelling and capitalization, type search, and try again."
    end
    elsif input == 'explain'
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "A players rank is their overall rank. A players position rank is their ranking in their position. RB12 means that player is the 12th highest-ranked running back.\nA player doesnt play during their teams bye week.\nAverage Draft Pick is the pick when a player is selected on average and is aggregated from a number of sources.\nRank vs. Average Draft Position compares the players consensus rank to their average draft pick.\n+3 means that a player is ranked 3 positions above their average draft pick. -5 means that a player is ranked 5 positions below their average draft pick."
    elsif input == 'exit'
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "Thank you for using the FantasyFootballLookup Ruby CLI gem. The data was scraped from https://www.fantasypros.com/. \nYou can view the gem source code at https://github.com/E-Shiels/fantasy_football_lookup. "
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    else
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts 'I am not sure what you want to do. Please try again.'
    end
  end
  end

end
