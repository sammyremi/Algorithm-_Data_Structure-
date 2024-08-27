def caesar_cipher_encryption(itext, orient, k)
  
  low_case = ('a'..'z').to_a
  up_case = ('A'..'Z').to_a
  
  new_str = ""
  
  itext.each_char do |ch|
    
    if low_case.include?(ch)
      if orient == 1
        inx  = low_case.index(ch)
        new_str << low_case[inx - k]
        
      elsif orient == 2
        inx  = low_case.index(ch)
        new_str << low_case[inx + k]
      end
    elsif up_case.include?(ch)
      if orient == 1
        inx  = up_case.index(ch)
        new_str << up_case[inx - k]
        
      elsif orient == 2
        inx  = up_case.index(ch)
        new_str << up_case[inx + k]
      end
    else
      new_str << ch
    end
  end
  return new_str
end

p caesar_cipher_encryption("EFG", 1, 4)
