#Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index {|name| name[0,2] == "Be"}
