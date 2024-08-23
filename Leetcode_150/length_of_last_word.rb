# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    # split string with space
    # return array at last index of return array

    str_arr = s.split(" ")
    return str_arr.last.length
end