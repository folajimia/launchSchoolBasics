require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'dk'

def messages(message, lang='dk')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_float?(num)
  num.to_f.to_s !=0
end

def valid_integer?(num)
  num.to_i.to_s !=0
end

def valid_number?(num)
  valid_float?(num)||valid_integer?(num)
end

def operation_to_message(opp)
  word = case opp
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
  word
end

first_number = ''
prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end
puts('-' * 40)
puts("Hi #{name}")
loop do
  loop do
    #require 'byebug'
    #byebug
    prompt(messages('first_number_text', LANGUAGE))
    first_number = gets.chomp

    if valid_number?(first_number)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  second_number = ''
  loop do
    prompt(messages('second_number_text', LANGUAGE))
    second_number_text = gets.chomp

    if valid_number?(second_number)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
  Please enter the operation you will like to perform

  1) to add
  2) to subtract
  3) to multiply
  4) to divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('choose_number', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  case operator
  when '1'
    answer = first_number.to_i + second_number.to_i
  when '2'
    answer = first_number.to_i - second_number.to_i
  when '3'
    answer = first_number.to_i * second_number.to_i
  when '4'
    answer = first_number.to_f / second_number.to_i
  end

  prompt("The result is #{answer}")

  prompt(messages('calculate_again', LANGUAGE))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt(messages('thanks', LANGUAGE))
