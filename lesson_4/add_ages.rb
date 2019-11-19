#Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
  "Marilyn" => 22, "Spot" => 237 }

def sum_of_ages(ages)
  sum = 0
  ages.each_value do |value|
    sum = sum + value
  end
  sum
end

puts sum_of_ages(ages)


#option 2

puts ages.values.inject(:+)
