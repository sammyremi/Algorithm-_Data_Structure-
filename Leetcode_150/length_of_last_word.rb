# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    str_arr = s.split(" ")
    return str_arr.last.length
end