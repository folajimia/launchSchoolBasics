



def number_selector (number)
  case
    when number < 0
      puts "number is less than 0"

    when (number > 0) && (number <= 50)
      puts "number is between 0 and 50"
    when (number > 50) && (number <= 100)
      puts "number is between 50 and 100"
    else
      puts "number is greater than 100"
    end
  end

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

number_selector(number)
