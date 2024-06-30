#  > stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(prices)
    return [] if prices.nil? || prices.length < 2
    
    max_profit = 0
    best_days = [0, 0]

    (0...prices.length).each do |buy_day|
        (buy_day + 1...prices.length).each do |sell_day|  # Corrected the range for sell_day
            profit = prices[sell_day] - prices[buy_day]  # Calculate profit correctly
            if profit > max_profit
                max_profit = profit
                best_days = [buy_day, sell_day]
            end
        end
    end
    
    best_days
end


stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
best_days_to_buy_sell = stock_picker(stock_prices)
puts "Best days to buy and sell: #{best_days_to_buy_sell.inspect}"


