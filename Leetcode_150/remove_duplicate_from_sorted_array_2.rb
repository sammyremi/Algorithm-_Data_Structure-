# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    # loop through each element in array
    # check the count of current element
    # if count greater than or equal 3 change item at that index
    # delete all item that was changed
    # return array sorted

    for x in 0..nums.length - 1
        num_count = nums.count(nums[x])
        if num_count >= 3
            nums[x] = ""
        end
    end
   nums.delete("")
   return nums.count
end