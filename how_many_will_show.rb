require './models/probability_calculator.rb'

player_prob = []
player_prob << ['Travis', 60]
player_prob << ['Jeff', 90]
player_prob << ['Shaun', 80]
player_prob << ['Lance', 30]
player_prob << ['Tom', 80]
player_prob << ['Frank', 80]
player_prob << ['Alex', 80]

probability_calculator = ProbabilityCalculator.new(player_prob)
average_players = probability_calculator.how_many_players_at_table

puts "#{average_players} will be at the table!"
