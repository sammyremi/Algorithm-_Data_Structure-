#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here
    min_arr = []
    max_arr = []
    #remove the lowest num from array and save
    min_num = arr.min
    max_num = arr.max

    arr.each do |x|
        if x == min_num
            next
        else
            min_arr.append(x)
        end
    end

    arr.each do |x|
        if x == max_num
            next
        else
            max_arr.append(x)
        end
    end
    #remove highest num from array and save
    #sum total item in arry and print


    puts max_arr.sum, min_arr.sum

end

arr = gets.rstrip.split.map(&:to_i)

miniMaxSum