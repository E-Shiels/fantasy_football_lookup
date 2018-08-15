require "nokogiri"
require "open-uri"
require "pry"
class Player
attr_accessor :name, :team, :position, :bye_week, :rank, :postion_rank, :best_rank, :worst_rank, :average_rank, :average_draft_position, :adp_vs_rank

def self.scrape_players
doc = Nokogiri::HTML(open('https://www.fantasypros.com/nfl/rankings/consensus-cheatsheets.php'))
binding.pry
players = []
doc.css("tr.player-row").each do |player_row|
  tds = [] 
    player_row.css("td").each |td|
      tds << td
    end
end
end

def self.find_player(player_search_input)

end

end

Player.scrape_players