def remove_element(nums, val)
    index = 1
    for x in 0..nums.length
        if nums[x] != val
            nums[index] = nums[x]
            index =+ 1
        end
    end

    puts nums

end

remove_element([0,1,2,2,3,0,4,2], 2)