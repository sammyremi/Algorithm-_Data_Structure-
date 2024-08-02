# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    
    #loop through each element and create a hash

    # store each new element as key 

    #increment value each time key appears

    # return key with the max value
    my_hash = {}

    nums.each do |x|
        if my_hash[x] == nil
            my_hash[x] = 0
            my_hash[x] = my_hash[x] += 1
        else
          my_hash[x] = my_hash[x] += 1
        end
    end
    
    return my_hash.key(my_hash.values.max)
end