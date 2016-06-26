def stock_picker(stockPriceArray)
  profitArray = []
  daysArray = []
  
  # Iterate through the entire array and find the profit margins for each pair of days in the array
  for i in 0..(stockPriceArray.length - 1)
    if(i == stockPriceArray.length - 1)
      break
    end
    
    for j in (i + 1)..(stockPriceArray.length - 1)
      diff = stockPriceArray[j] - stockPriceArray[i]
      profitArray << diff
      daysArray << [i, j]
    end
  end
  
  # Find the index of the days with the highest profits and return the pair of days involved
  index = profitArray.rindex(profitArray.max)
  daysArray[index]
end

stock_picker([17,3,6,9,15,8,6,1,10])