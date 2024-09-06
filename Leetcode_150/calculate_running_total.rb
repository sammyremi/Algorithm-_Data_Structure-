def calculate_running_total(list_of_numbers, n)

    #initialize num variable to 1
    # loop through each and mutiply by value of num
    # check if num is even return num mutiply by 2 if list of number include 0
    # if not return list of number sum
    # check if num is odd return num + 1 if list of number include 3
    # if not return num
  
    num = 1

    list_of_numbers.each {|x| num *= x}

    if num.even?
        return num * 2 if list_of_numbers.include?(0)
        return list_of_numbers.sum
    elsif num.odd?
        return num + 1 if list_of_numbers.include?(3)
        return num
    end

end

p calculate_running_total([3,7,9], 3)