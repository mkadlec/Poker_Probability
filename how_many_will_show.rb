# Steve 90%
# Jeff 90%
# Ben 90%
# Randy 80%
# Tim 90%
#
# This algorithm adds me as a player as well
#

MYSELF = 1
player_prob = [99, 90, 90, 80, 90]
iterations = 10
total_guests = 0

iterations.times do
  players = 0
  player_prob.each do |prob|
    players += 1 if Random.rand(100) < prob
  end
  total_guests += players
end

average_players = MYSELF + (total_guests.to_f / iterations.to_f).round

puts "#{average_players} will be at the table!"
