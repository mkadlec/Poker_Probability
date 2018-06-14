#
# This calculator adds me as a player as well
#
class ProbabilityCalculator

  attr_reader :player_probabilities

  MYSELF = 1

  def initialize(player_probabilities)
    @player_probabilities = player_probabilities
  end

  def how_many_players_at_table
    iterations = 10
    total_guests = 0

    iterations.times do
      players = 0
      self.player_probabilities.each do |player, prob|
        players += 1 if Random.rand(100) < prob
      end
      total_guests += players
    end

    MYSELF + (total_guests.to_f / iterations.to_f).round
  end
end
