h = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}





y = h.delete_if {|key, value| value < 3.5 }

p y
p h
