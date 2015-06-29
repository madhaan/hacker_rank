array1 = [1,2,3,4]
array2 = [2,3,5]
array = array1 | array2 
puts "union values #{array}"
array = array1 & array2
puts "intersection values #{array}"



hackerrank = {32=>12 , 23=>12}
hackerrank.store( 543121 , 100 )
puts"#{hackerrank}"
hackerrank.keep_if {|key, value| key % 2 == 0}
hackerrank.delete_if {|key, value| key % 2 != 0}
