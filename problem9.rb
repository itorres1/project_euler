def squares(num)
  num_array = (1..num).to_a
  results = []
  num_array.each do |num|
    results << num ** 2 
  end
  return results
end

def pyth_trip(num)
  num_array = squares(num)
  num_array2 = squares(num)
  results = 0
  num_array.each do |num1|
    num_array2.each do |num2|
        num3 = num1+num2
        one = Math.sqrt(num1)
        two = Math.sqrt(num2)
        three = Math.sqrt(num3)
        sum = one+two+three
        if (num1+num2==num3) && (sum==num)
          results = one*two*three
      end
    end
  end
  results.to_i
end

puts pyth_trip(1000)

