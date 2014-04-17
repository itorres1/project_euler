# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def is_prime?(num)
  2.upto(num-1) do |i|
    return false if num%i==0 
  end
  true
end

int = 2
count = 0
result = 0

while count != 10002
  if is_prime?(int)
    count+=1
    puts "The # #{count} prime is #{int}"
  end
  int+=1
end