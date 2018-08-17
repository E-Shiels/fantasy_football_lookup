require "nokogiri"
require "open-uri"
require "pry"
class Player
attr_accessor :name, :team, :position, :bye_week, :rank, :position_rank, :best_rank, :worst_rank, :average_rank, :average_draft_position, :adp_vs_rank

def self.scrape_players
doc = Nokogiri::HTML(open('https://www.fantasypros.com/nfl/rankings/consensus-cheatsheets.php'))
@@players = []
doc.css("tr.player-row").each do |player_row|
  player = self.new
  tds = []
    player_row.css("td").each do |td|
      tds << td
    end
      player.name = tds[1].children[0].attributes.values[3].value
      player.team = tds[1].children.to_s.scan(/[A-Z]{2,3}/)[0]
      player.position = tds[1].children.to_s.scan(/[A-Z]{2,3}/)[1]
      player.bye_week = tds[4].text
      player.rank = tds[0].text
      player.position_rank = tds[3].text
      player.best_rank = tds[5].text
      player.worst_rank = tds[6].text
      player.average_rank = tds[7].text
      player.average_draft_position = tds[9].text
      player.adp_vs_rank = tds[10].text
    @@players << player
end
@@players
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
