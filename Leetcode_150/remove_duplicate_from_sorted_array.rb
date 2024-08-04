# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    # loop through each element with len index
    # get count of current index from array
    #check if element more than 2 
    #if element more than 2 change current element to ""
    #delete all "" from array

    
        for x in 0..nums.length - 1
            ele_count = nums.count(nums[x])
            if ele_count > 2
                nums[x] = ""
            end
        end
    
        nums.delete("")
        return nums.length
        
end