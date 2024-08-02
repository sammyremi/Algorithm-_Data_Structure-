# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    #loop through with k as count
    # at each itteration call rotate -1 on array to rotate backwards

    nums.rotate!(-k)
end