def remove_element(nums, val)


    idx = 0
   
   for x in 0..nums.length - 1
        if nums[x] == val
            idx += 1
            temp = nums[x]
            nums[x] = nums[-idx]
            nums[-idx] = temp
        end
        if x + idx == nums.length
            break
        end
   end

   puts nums
end

remove_element([0,1,2,2,3,0,4,2], 2)