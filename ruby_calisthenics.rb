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
