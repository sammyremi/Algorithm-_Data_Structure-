#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)

    # Write your code here

    # get length of array passed

    # loop through array with length

    # get item of array at index of length 

    # sum all intgers gotten

    # loop through array in reverse 

    # get item of array at index of length 

    # sum all intgers gotten

    val1 = []
    val2 = []

    len = arr.length - 1

    for x in 0..len
        ar  = arr[x]
        val1.append(ar[x]) 
    end

    new_len = len

    for x in 0..len
        ar  = arr[x]
        item = ar[new_len]
        new_len = new_len - 1
        val2.append(item)
    end

    value =  val1.sum - val2.sum

    return value.abs

end


# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# n = gets.strip.to_i

# arr = Array.new(n)

# n.times do |i|
#     arr[i] = gets.rstrip.split.map(&:to_i)
# end

# result = diagonalDifference arr

# fptr.write result
# fptr.write "\n"

# fptr.close()
