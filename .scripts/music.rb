stats = `mpc`.split("\n")

if stats.size <= 1
  puts "Silence..."
else
  state = stats[1].split
  puts "#{state[0]} #{stats.first}"
end
