


family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

#immidiate_family = family.select {|closness, name| (closness == :sisters) || (closness == :brothers)}

immidiate_family = family.select do |closness, name|
  (closness == :sisters) || (closness == :brothers)

end

puts immidiate_family
puts immidiate_family.values
