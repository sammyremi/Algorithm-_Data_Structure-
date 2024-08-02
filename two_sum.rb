# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    
    # loop through each element of array
    # subtract element x from target
    # convert result to positive number
    # check if result present in array
    # get index of current element and index of result
    #
    # if those item sum up to be target 
    # return their index

    for x in 0..nums.length - 1
        result = nums[x] - target
        result = result.abs

        if nums.length == 2 && nums[0] + nums[1] == target
            return [0, 1] 
        else
        
            if result + nums[x] == target && nums.include?(result) && nums[x] != result

                return [nums.index(nums[x]), nums.index(result)]
            end
        end
    end

end

puts two_sum([3,3], 6)