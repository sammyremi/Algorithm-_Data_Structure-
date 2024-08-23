# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)

    
    # we want to return true if array doest not contain zero
    # assign variable to goal_flag to be the last element in array which is array length
    # asign a variable to person which will be index before the goal_flag
    # we want to get person standing check how many step to get him to flag
    # if that first index lement > sub array length - 1
    # then we can set goal to be index of person and shift person by 1 step back
    # if person at sub array element @ index not greater or equal  to sub array length
    # we want tokeep moving back till person get to index 0 of main array
    return true if !nums.include?(0)

    return true if nums.length == 1

    len = nums.length - 1

    goal_flag = len
    person = goal_flag - 1

    while true
        new_arr = nums[person..goal_flag]
        if new_arr[0] >= new_arr.length - 1
            goal_flag = person
            person -= 1
        else
            person -= 1
        end

        if person == -1
            last_arr = nums[0..goal_flag]
            if nums[0] >= last_arr.length - 1
                return true
            else
                return false
            end
        end

    end
        
end