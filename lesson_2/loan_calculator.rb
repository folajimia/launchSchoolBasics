require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
LANGUAGE = 'dk'

def messages(message, lang ='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  if num.empty? || num.to_f < 0
end


puts '#' * 40
prompt(messages('welcome'))
puts '#' * 40
prompt(messages('enter_name'))
name = ' '
loop do
  name = gets.chomp
  if name.empty?
    prompt(messages('valid_name'))
  else
    break
  end
end

principal = ' '
loop do

  loop do
    prompt("welcome #{name}, please enter the amount you would like to loan")
    principal = gets.chomp
    if valid_number?(principal)
      break
    else
      prompt(messages('invalid_number'))
    end
  end
annual_rate=' '
  loop do
    prompt(messages('annual_percentage'))
    annual_rate = gets.chomp
    if valid_number?(annual_rate)
      break
    else
      prompt(messages('invalid_number'))
    end
  end
loan_duration=' '
  loop do
    prompt(messages('loan_duration_m'))
    loan_duration = gets.chomp
    if valid_number?(loan_duration)
      break
    else
      prompt(messages('invalid_number'))
    end
  end


  annual_rate_percent = annual_rate.to_f/100
  monthly_rate =annual_rate_percent / 12
  loan_duration_month = loan_duration.to_f * 12

  monthly_payment =  principal.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration_month.to_f)))
  prompt( "The monthly payment is: $#{format('%02.2f',monthly_payment)}")

  prompt(messages('calculate_again'))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('thanks_u'))
