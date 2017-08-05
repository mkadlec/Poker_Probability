# Tim 85%
# Peter 20%
# Jeff 90%
# David 40%
# Matt 60%
# Shaun 90%
#
# This algorithm adds me as a player as well
#

MYSELF = 1
player_prob = [85, 20, 90, 40, 60, 90]
iterations = 10
total_guests = 0

iterations.times do
  players = 1
  player_prob.each do |prob|
    players += 1 if Random.rand(100) < prob
  end
  total_guests += players
end

average_players = MYSELF + (total_guests / iterations)

puts "#{average_players} will be at the table!"
