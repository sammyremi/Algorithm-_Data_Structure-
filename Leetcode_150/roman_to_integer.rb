# @param {String} s
# @return {Integer}
def roman_to_int(s)

    # set variable roman_numeral to numeral symblols of hash key and value
    # get to pointers for x and y where x equal y - 1
    # set result variable to equal last element in string after converting string
    # check if string length greather than 1
    # run a while loop to check each element for conversion 
    # check if x < y we want to subtract previous value of result from x
    # check if x > y we want to add previous value of result and x to result
    # decrease loop count 
    # return result
    roman_numeral = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
    
   y = s.length - 1
   x = y - 1
   result = roman_numeral[s[-1].upcase]
   if s.length > 1
     while x >= 0
        if roman_numeral[s[x].upcase] < roman_numeral[s[y].upcase]
          
          result -= roman_numeral[s[x].upcase]
          x -= 1
          y -= 1
        else
          result += roman_numeral[s[x].upcase]
          x -= 1
          y -= 1
        end
     end
   else
     return result
   end
  return result
end