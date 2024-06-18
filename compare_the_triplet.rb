#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#
# 

def compareTriplets(a, b)

    #keep the score for both a, b
    scorea = 0
    scoreb = 0

    
    for x in 0..a.length - 1
        
        if a[x] > b[x] && a[x] != b[x]
            scorea = scorea + 1
        else
            if a[x] == b[x]
                next
            else
                scoreb = scoreb + 1
            end
        end
    end
    # loop through each item in array to compare
    #compare score for both index

    # +1 to score if index value larger than the other

    # if both index are same ignore

    #append score to return array
    return [scorea, scoreb]

end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
