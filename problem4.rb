def is_palindrome?(num)
  return true if num.to_s.reverse == num.to_s
  false
end

def largest_product_of_2_3_digits
  numbers = (100..999).to_a
  results = []
  numbers.each do |number|
    numbers.each do |number2|
      product = number * number2
      results << product if is_palindrome?(product)
      puts "#{number} times #{number2} equals #{product}" if is_palindrome?(product)
    end
  end
  puts results.max 
end

