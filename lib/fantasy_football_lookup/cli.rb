class CLI
  def call
    menu
    goodbye
  end

  def menu

  end

  def goodbye
 puts "Thank you for using the FantasyFootballLookup Ruby CLI gem. The data was scraped from https://www.fantasypros.com/. \nYou can checkout the gem source code at https://github.com/E-Shiels/fantasy_football_lookup. "
  end

end

cli = CLI.new
cli.goodbye