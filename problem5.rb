# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_positive_number(num)
  num_arr = (1..num).to_a
  idx = 1
  result_arr = []
  result = 0
  count = 0

  while result == 0
    count = idx * 20
    num_arr.each do |i|
      result_arr << i if count%i==0
    end
    result = count if result_arr.sort == num_arr.sort

    idx += 1
    result_arr = []
  end

  return result 
end

puts smallest_positive_number(20)


