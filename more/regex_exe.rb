

my_list = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]
my_list.each do |word|
  if word =~ /lab/
    puts "Lab exits in the word #{word}"
  end
end
