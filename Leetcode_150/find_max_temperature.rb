def find_max_temperature(arr, n)

    # set start temperation to zero
    # initialize array for temp difference
    # loop through each array element and add to previous value of temp by current value
    # append current temperature to new array
    # return max temperature from array

    temp = 0
    diff = []

    arr.each do |x|
        temp += x
        diff << temp
    end
    return diff.max
end

p find_max_temperature([1,-2,1], 3)