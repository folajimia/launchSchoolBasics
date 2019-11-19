#throw out the really old people (age 100 or older).
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

young_age = []
ages.each_value do |value|
  if value <= 100
    young_age.push(value)
  end
end




p young_age

#elegant ways

puts ages.keep_if {|_, value| value <= 100}

puts ages.select {|_, value| value <= 100}
