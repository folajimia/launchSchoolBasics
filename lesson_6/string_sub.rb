munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
end



a = 2
b = [5, 8]
arr = [2, [5, 8]]

arr[0] =arr[0] + 2
arr[0] = 4
arr[1][0] -= a

arr[1][0] = arr[1][0] - a
=5-2 =3

[4, [3,8]]