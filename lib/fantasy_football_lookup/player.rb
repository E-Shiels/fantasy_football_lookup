require "nokogiri"
require "open-uri"
class Player
attr_accessor :name, :team, :position, :bye_week, :rank, :position_rank, :best_rank, :worst_rank, :average_rank, :average_draft_position, :adp_vs_rank

@@players = []

def initialize
  @@players << self
end

def self.player_exists?(player_search_input)
  if self.all.detect { |player| player.name == player_search_input }
    return true
  else
    return false
  end
end

def self.find_player(player_search_input)
  self.all.select do |player|
    player.name == player_search_input
  end
end

def self.all
  @@players
end

end
