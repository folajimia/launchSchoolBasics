

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


#gone = arr.delete_if {|ar| ar.start_with?("s")}

arr.delete_if{|ar| ar.start_with?("s", "w")}

#p gone
p arr
