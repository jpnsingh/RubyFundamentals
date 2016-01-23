puts 'using backticks:'
res = %x(time /t)
puts res

puts 'using system:'
res = system 'time /t'
puts res
