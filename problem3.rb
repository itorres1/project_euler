# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def is_prime?(num)
  2.upto(num-1) do |i|
    return false if num%i==0
  end
  true
end

def largest_prime_factor(num)
  Math.sqrt(num).to_int.downto(2) do |i|
    return i if num%i==0 && is_prime?(i)
  end
end

puts largest_prime_factor(600851475143)






