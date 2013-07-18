class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  strat1 = game[0][1]
  strat2 = game[1][1]
  raise NoSuchStrategyError unless ((/P|R|S/i.match strat1) and (/(P|R|S)/i.match strat2))
  h = {'P' => 'R', 'R'=> 'S', 'S' => 'P'  }
  result = game[0]
  if (h[strat2] == strat1)
    result = game[1]
  end
  result
end

def rps_tournament_winner(tournament)
  x = 0
  semi = Array.new
  r = Array.new
  tournament.each do |tourn1|
    tourn1.each do |game|
      r << rps_game_winner(game)
    end
    semi << rps_game_winner(r)
    r.clear
  end
  winner = rps_game_winner(semi)
end
