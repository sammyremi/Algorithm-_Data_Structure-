def caesar_cipher_encryption(itext, orient, k)

  # get all lowercase alphabeth into array
  # get all uppercase alphabeth into array
  # initialize an empty string variable
  # loop through each itext string
  # check if element is upper or lower case if not append to new temp string
  # check if orient equal 1 subtract k from element index
  # check if orient equal 2 add k to element index
  # append index subtracted from 26 append position to new string

  
  low_case = ('a'..'z').to_a
  up_case = ('A'..'Z').to_a
  
  new_str = ""
  
  itext.each_char do |ch|
    
    if low_case.include?(ch)
      if orient == 1
        inx  = low_case.index(ch)
        inx = inx - k
        new_str << low_case[inx - 26]
        
      elsif orient == 2
        inx  = low_case.index(ch)
        inx = inx + k
        new_str << low_case[inx - 26]
      end
    elsif up_case.include?(ch)
      if orient == 1
        inx  = up_case.index(ch)
        inx = inx - k
        new_str << up_case[inx - 26]
        
      elsif orient == 2
        inx  = up_case.index(ch)
        inx = inx + k
        new_str << up_case[inx - 26]
      end
    else
      new_str << ch
    end
  end
  return new_str
end

p caesar_cipher_encryption("efg", 1, 4)