class Scraper

def self.scrape_players
doc = Nokogiri::HTML(open('https://www.fantasypros.com/nfl/rankings/consensus-cheatsheets.php'))
doc.css("tr.player-row").each do |player_row|
  player = Player.new
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
end

end

end
