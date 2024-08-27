def rotate_image(size, image)
    #loop through each each image array

    len = size - 1
    new_arr = []
    while len >= 0
        temp = []
        image.each {|x| temp << x[len]}
        len -= 1
        new_arr << temp
    end  
    
    
    for x in 0..size - 1
        image[x] = new_arr[x]
    end

    return image
end


arr = [[1,2], [3,4]]

p rotate_image(2, arr)

p ('1'..'100').to_a
