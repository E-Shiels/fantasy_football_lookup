require "nokogiri"
require "open-uri"
class Player
attr_accessor :name, :team, :position, :bye_week, :rank, :postion_rank, :best_rank, :worst_rank, :average_rank, :average_draft_position, :adp_vs_rank

def self.scrape_players
doc = Nokogiri::HTML(open(https://www.fantasypros.com/nfl/rankings/consensus-cheatsheets.php))
binding.pry
player = self.new


end

def self.find_player

end

end

Player.scrape_players
