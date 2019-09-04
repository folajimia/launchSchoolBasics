
def greetings(name, options={})
  if options.empty?
    puts "Hi my name is #{name}"
  else
    puts "Hi my name is #{name} and i am #{options[:age]}" +
    "years old and i live in #{options[:city]}"
  end
end

greetings("Bob")
greetings("Bob",{age: 62, city: "New york"})
