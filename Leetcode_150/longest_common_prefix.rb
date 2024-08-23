# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  
    # set string first_strs variable to get strs @ index 0 
    # create new array starting from index 1 to end of array
    # initiate variable of empty string and also a variable flag
    # start a loop from 0 to length of first_strs
    # set variable count to 0
    # create second loop to loop through each of new array created
    # check if each element at count index equal same index of first_strs
    # if yes increase count by 1
    # append empty string with current interation of element 
    # else set flag to false
    # break from second loop if flag equal false
    
    
    first_strs = strs[0]
    new_arr = strs[1..-1]
    len = first_strs.length - 1
    st = ""
    flag = true
    
    for x in 0..len
      count = 0
      
      new_arr.each do |string| 
        if string[x] == first_strs[x]
          count += 1
        else
          flag = false
        end   
      end
      
      break if flag == false
      st << first_strs[x] if count == new_arr.length
        
    end
    p st
  end
  
  arr = ["dog","racecar","car"]
  arr = ["cir","car"]
  longest_common_prefix(arr)
  