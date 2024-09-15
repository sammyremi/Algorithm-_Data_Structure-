# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  
    #intialize variable for temp array, intialize variable for min buy stock
    # initialize variable for profit after selling
      arr = prices
      min_buy = arr[0]
      sel_pro = 0
    
      # set variable to keep track of all maximum profit made at each selling point
      # keep count to check if we are not making any profit
      maximum_profit = [0]
      count_check = 0
    
      # setting first loop 
      while arr
        
        #getting minimum stock bought and on any day that will make > 1 profit
        # subtracting buying stock from selling stock 
        for x in 0..arr.length - 1
          min_buy = [arr[x], min_buy].min
          sel_pro = [sel_pro, arr[x] - min_buy].max
          
        # at each time we make profit we want to update our temp array 
        # at the day we sold till end of week arr[-1]
        #reset value after every append of profit
        
          if sel_pro > 0
            maximum_profit << sel_pro
            arr = arr[x..-1]
            min_buy = arr[0]
            sel_pro = 0 
            break
          else
            # to check if we are not making profit
            count_check += 1
            return maximum_profit.sum if count_check == prices.count
          end
          
        end
        # return all maximum profit if our array shrink to 1 element
        return maximum_profit.sum if arr.length < 2
      end
    end
    p max_profit([1,2,3,4,5])