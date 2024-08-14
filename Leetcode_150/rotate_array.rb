# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    #loop through with k as count
    # at each itteration call rotate -1 on array to rotate backwards

    nums.rotate!(-k)
end

#=====================================================================================================
# solution 2
#=====================================================================================================

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)

    #loop through array from behind
    #copy last element of array to first
    #delete last element
    for x in 1..k 
        temp = nums[-1]
        nums.unshift(temp)
        nums.pop
    end

end
