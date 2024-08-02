# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)

    new_arr = []

    nums1.each do |x|
        if nums2.include?(x)
            if new_arr.include?(x)
                next
            else
                new_arr.append(x)
            end
        end
    end
    puts new_arr
end

intersect([1,2,3,4,7,8], [3,2,6,5,2,4])