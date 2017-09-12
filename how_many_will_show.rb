# Shaun 90%
# Travis 90%
# Eddy 80%
# Jeff 90%
# Tim 80%
# Kevin 50%
#
# This algorithm adds me as a player as well
#

MYSELF = 1
player_prob = [90, 90, 80, 90, 80, 50]
iterations = 10
total_guests = 0

iterations.times do
  players = 0
  player_prob.each do |prob|
    players += 1 if Random.rand(100) < prob
  end
  total_guests += players
end

average_players = MYSELF + (total_guests / iterations)

puts "#{average_players} will be at the table!"
