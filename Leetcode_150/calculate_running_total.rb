def calculate_running_total(list_of_numbers, n)

    num = 1

    str = []

    list_of_numbers.each {|x| num *= x}

    # st = num.to_s
    # return list_of_numbers.sum * 2 if st.include?("0")
    # return num + 1 if st.include?("3")

    if num.even?
        return list_of_numbers.sum
    else
        return num
    end

end

p calculate_running_total([5,7,9], 3)
