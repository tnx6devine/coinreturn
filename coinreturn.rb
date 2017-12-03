def change_maker_3000(change)
	coins_returned = {}
	coin_values = coins = {:dollar => 100, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
	coin_values.each do |money, value|
		if change >= value
			coins_returned[money] = change / value
			change = change % value
		end
	end
	coins_returned
end



# 	if change > 0 && change < 5
# 		coin[:penny] = change
# 	elsif change > 4 && change < 10
# 		coin[:nickel] = change / 5
# 		change = change % 5
# 		if change > 0
# 			coin[:penny] = change
# 		end
# 	elsif change > 9
# 		coin[:dime] = change / 10
# 		change = change % 10
# 		if change > 4
# 			coin[:nickel] = change / 5
# 			change = change % 5
# 			if change > 0
# 				coin[:penny] = change
# 			end
# 		end
# 	end
# 	coin
# end

