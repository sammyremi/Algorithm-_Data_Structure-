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