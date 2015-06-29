



credit = 100
prices = [5, 75, 25]

i=0
j=0
length = prices.length
do_break = false
while i < length
 j = i + 1
 while j < length
  if credit == prices[i] + prices[j]
    do_break = true
    break
  end 
  j= j + 1
end
break if do_break
i = i + 1
end   
puts"i #{i+1}"
puts"j #{j+1}"