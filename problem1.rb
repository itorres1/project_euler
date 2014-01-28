# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def my_sum
  num_array = []
  1.upto(999) do |num|
    num_array << num if num%3==0 || num%5==0
    end
    puts num_array.reduce(0) {|sum, num| sum+num}
end

my_sum