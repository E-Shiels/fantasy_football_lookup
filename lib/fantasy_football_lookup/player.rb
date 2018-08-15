require "nokogiri"
require "open-uri"
require "pry"
class Player
attr_accessor :name, :team, :position, :bye_week, :rank, :position_rank, :best_rank, :worst_rank, :average_rank, :average_draft_position, :adp_vs_rank

def self.scrape_players
doc = Nokogiri::HTML(open('https://www.fantasypros.com/nfl/rankings/consensus-cheatsheets.php'))
players = []
doc.css("tr.player-row").each do |player_row|
  player = self.new
  tds = [] 
    player_row.css("td").each do |td|
      binding.pry
      tds << td
      
    end
      player.name = "TESTING"
      player.team = "TESTING"
      player.position = "TESTING"
      player.bye_week = tds[4].text
      player.rank = "TESTING"
      player.position_rank = tds[3].text 
      player.best_rank = tds[5].text
      player.worst_rank = tds[6].text
      player.average_rank = tds[7].text
      player.average_draft_position = tds[9].text
      player.adp_vs_rank = tds[10].text
    players << player
end
players
end

def self.find_player(player_search_input)

end

end

Player.scrape_players