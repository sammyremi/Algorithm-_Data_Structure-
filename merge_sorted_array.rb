# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)

    result = nums1.length - n
    
    for x in 0..n - 1
        idx = result + x
        nums1[idx] = nums2[x]
    end
    nums1.sort!
end

