#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    # Write your code here

    # we wont to loop through the array
    
    # get positive and negtive and 0 into diffrent array

    # we wont to divide the length of the positive array by length of the original arr

    # we wont to also print the number in six decimal places

    negtive_arr = []
    positive_arr = []
    zero_arr = []

    arr.each do |x|
        if x == 0
            zero_arr.append(x)
        elsif
            x > 0
            positive_arr.append(x)
        else
            negtive_arr.append(x)
        end
    end

    new_arr = [positive_arr, negtive_arr, zero_arr] 

    new_arr.each do |x|
        result = x.length.to_f / arr.length.to_f
        result = "%.6f" % result
        puts result
  
    end 
end



n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
