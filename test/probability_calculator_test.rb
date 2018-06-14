require 'minitest/autorun'
require './models/probability_calculator.rb'

describe ProbabilityCalculator do
  it 'includes myself as a player' do
    player_prob = []
    player_prob << ['Race', 0]

    probability_calculator = ProbabilityCalculator.new(player_prob)
    number_of_players = probability_calculator.how_many_players_at_table
    assert_equal number_of_players, 1
  end
  it 'includes others' do
    player_prob = []
    player_prob << ['Race', 100]
    player_prob << ['Hadji', 100]
    player_prob << ['Benton', 100]
    player_prob << ['Jonny', 100]

    probability_calculator = ProbabilityCalculator.new(player_prob)
    number_of_players = probability_calculator.how_many_players_at_table
    assert_equal number_of_players, 5
  end
end
