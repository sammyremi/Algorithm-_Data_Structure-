# def max_profit(prices)

#     arr = [] 
    
#     for x in 0..prices.length - 1
#       buy_day = x
#       for y in x..prices.length - 1
#         diff = prices[y] - prices[x] 
#         arr << diff
#       end
#     end
#     if arr.max <= 0
#         return 0
#     else
#         return arr.max
#     end
# end
  
# p max_profit([2,4,1])

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)

    #initialize variable for buying price
    #initialize current profit to equal zero 
    #loop through each arr as day to determin price
    #update buy price by comparing previous buying price and current buying price to get the minimum
    #update current profit if after subtracting buy from sell price update maximum profit variable
        
        
        buy_price = prices[0]
        current_profit = 0
        
        prices.each do |x|
          buy_price = [buy_price, x].min
          current_profit = [current_profit, x - buy_price].max
        end
        
        return current_profit
        
end