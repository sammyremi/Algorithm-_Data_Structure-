def decipher(ciphertext)
        # get all a - z  in a avarible 
        # get all A - Z in a variable
        # create a new string to store new text
        # loop throuh each char and look for it in both variable
        # also check for other character
        # get index and - 2 
        # append result to new string

        low_case = ("a".."z").to_a
        up_case = ("A".."Z").to_a

        new_str = ""
        flag = false

        ciphertext.each_char do |str|
            if low_case.include?(str)
                idx = low_case.index(str)
                ans = low_case[idx - 2]
                new_str << ans
            elsif up_case.include?(str)
                idx = up_case.index(str)
                ans = up_case[idx - 2]
                new_str << ans
            else
                new_str << str
            end

        end

        p new_str
end

decipher("Eqfkpi vguvu ctg hwp!")