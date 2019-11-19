munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
#{}"age_group" => "adult"
#{}"age_group" => "senior" }
#{}"age_group" => "kid"
#range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.
munsters.each do |name, record|
  #puts record["age"]
  case record["age"]
  when 1..10
    record["age_group"] = "kid"

  when 18..64
    record["age_group"] = "adult"

  when 65..1000
    record["age_group"] = "senior"
  end

end

puts munsters


#if record["age"].between?(0,17) #if (1..10) === i
