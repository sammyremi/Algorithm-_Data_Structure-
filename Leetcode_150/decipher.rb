def decipher(ciphertext, check_word)
    # get all a - z  in a avarible 
    # get all A - Z in a variable
    # initialize kount to zero
    # creaye a while loop to run for alphabeth length
    # create a new string to store new text
    # loop throuh each char and look for it in both variable
    # also check for other character
    # get index and subtract index from kount
    # append result to new string

    low_case = ("a".."z").to_a
    up_case = ("A".."Z").to_a

    
    kount = 0
    while kount < 26
        new_str = ""
        ciphertext.each_char do |str|
            if low_case.include?(str)
                idx = low_case.index(str)
                ans = low_case[idx - kount]
                new_str << ans
            elsif up_case.include?(str)
                idx = up_case.index(str)
                ans = up_case[idx - kount]
                new_str << ans
            else
                new_str << str
            end

        end
        kount += 1
        return new_str if new_str.include?(check_word)
    end
    return "Invalid"
    
end

p decipher("Eqfkpi vguvu ctg hwp!", "tests")