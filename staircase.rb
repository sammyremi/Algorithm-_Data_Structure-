#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
    # Write your code here

    # we wont a loop that runs by n

    # each itteration will determin the number of #

    # number of space to print n minus x

    # num of hash to print will be x

    # num of space with num #
    space = " "
    hash = "#"

    for x in 1..n
 
        num_s = n - x
        num_h = x

        puts space * num_s + hash * num_h
    end

end

n = gets.strip.to_i

staircase n

