def power(base,exponent)
  exponent_array = []
  exponent.times do
    exponent_array.push(base)
  end
  puts exponent_array.inject(:*)
end

def factorial(number)
  factorial_array = [1]
  count = 1
  while count < number
    count = count + 1
    factorial_array << count
  end
  puts factorial_array.inject(:*)
end

def uniques(original_array)
  unique_array = []
  original_array.each do |da_item|
    if unique_array.include?(da_item) == false
      unique_array << da_item
    end
  end
  puts unique_array
end

def combinations(first_array,second_array)
  combo_array = [first_array,second_array]
  puts combo_array.first.product(*combo_array[1..-1]).map{|x| x.join}
end

def is_prime?(number)
  return false if number < 2
  maxcheck = Math.sqrt(number)
  (2..maxcheck).any? do |x|
    return false if number % x == 0
  end
  true
end

def the_counting_game(players,maxnumber)
  count = 1
  current_player = 1
  player_direction = 1
  while count <= maxnumber
    puts "Player " + current_player.to_s + " says " + count.to_s

    if count % 7 == 0
      puts "Direction change!"
      player_direction = player_direction * -1
    end

    if count % 11 == 0
      puts "Player Skip!"
      if player_direction == 1
        if current_player == players
          current_player = 2
        else
        current_player = current_player + 1
        end
      else
        if current_player == 1
          current_player = players
        else
        current_player = current_player - 1
        end
      end
    end

    if player_direction == 1
      current_player = current_player + 1
    else
      current_player = current_player - 1
    end

    if current_player == players + 1 && player_direction == 1
      current_player = 1
    end
    if current_player == 0 && player_direction == -1
      current_player = players
    end
    count = count + 1
  end
  #puts count
end

the_counting_game(16,100)
