#!/bin/ruby

require 'json'
require 'stringio'


# Complete the 'simpleArraySum' function below.

# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY ar as parameter.


def simpleArraySum(ar)
    # Write your code here
    # loop through the array
    
    #set a temp variable to equal 0
    
    # we can loop through each item

    # add temp value to current interating item

    #print value of temp

    # we can  just return ar.sum
    temp = 0
    ar.each do |x|
        temp = temp + x
    end

    return temp

end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()
