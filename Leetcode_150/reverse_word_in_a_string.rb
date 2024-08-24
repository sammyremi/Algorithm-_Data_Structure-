# @param {String} s
# @return {String}
def reverse_words(s)

    #split string to eliminate all space and return in array
    # intialize variable to store new incoming sting
    # get length of splited array
    # set variable index to -1
    # loop with len times
    # get each element from array from behind and reduce index by 1
    # appende new string with current element at index and add a white space
    #remove last white space on new string string[-1]
   
       arr =  s.split(" ")
   
       new_str = ""
   
       len = arr.length 
       index = -1
   
       len.times do
           st = arr[index] + " "
           new_str << st
           index -= 1
       end
       return new_str[0..-2]
   end