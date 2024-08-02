# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
 
    #get length of num1 and subtract from n
       result = nums1.length - n
   
   # loop through array two to join with index to array 1
       for x in 0..n - 1
       # get index of element to swap
           idx = result + x
           nums1[idx] = nums2[x]
       end
       # sort array atter swapping
       nums1.sort!
   end