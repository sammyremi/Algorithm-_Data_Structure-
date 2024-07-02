# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    #checking if array > or equal else we return false
    if arr.length >= 3
    
    #loop through each element of array
        for x in 0..arr.length - 1

    # assign variable to keep track of next two index
            a = 1
            b = 2
    #return false when we get to end of array when we cant find item
            return false if arr[x+b] == nil

    # return true if elements are all equal
            if arr[x].odd? && arr[a+x].odd? && arr[b+x].odd?
                return true
            else
        end
    else
        return false
    end
end

