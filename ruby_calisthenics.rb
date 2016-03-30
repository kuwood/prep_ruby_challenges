def power(base,exponent)
  exponent_array = []
  exponent.times do
    exponent_array.push(base)
  end
  puts exponent_array.inject(:*)
end


puts "Lets calculate an exponent, what is the base?"
base_number = gets.chomp.to_i

puts "Ok, now what is the exponent?"
exponent_number = gets.chomp.to_i

puts "ok that would be....uhhh...."
power(base_number,exponent_number).to_i
