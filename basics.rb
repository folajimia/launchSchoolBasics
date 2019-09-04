#Exe 1

Firstname = 'Folajimi'
Lastname = 'Adekoya'
puts (Firstname + " " + Lastname)

#Exe 2
four_digit_number = 4994
thousand_place = four_digit_number / 1000
hundred_place = four_digit_number % 1000 / 100
ten_place = four_digit_number % 1000 % 100 / 10
ones = four_digit_number % 1000 % 100 % 10

puts thousand_place
puts hundred_place
puts ten_place
puts ones

#Exe 3
 movies_and_date ={:black_widow => 'May 1 2020',
   :falcon_winter_soldier => 'oct 1 2020',
   :eternals => 'Nov 6 2020',
   :shangchi => 'feb 12 2021' }

puts movies_and_date[:black_widow ]
puts movies_and_date[:falcon_winter_soldier  ]
puts movies_and_date[:eternals  ]
puts movies_and_date[:shangchi ]

#Exe 4

dates_array = [1975,
2004,
2013,
2001,
1981]

puts dates_array[0]
puts dates_array[1]
puts dates_array[2]
puts dates_array[3]
puts dates_array[4]

#exe 5
factorial_5 = 5*4*3*2*1
factorial_6 = 6*5*4*3*2*1
factorial_7 = 7*6*5*4*3*2*1
factorial_8 = 8*7*6*5*4*3*2*1

puts factorial_5
puts factorial_6
puts factorial_7
puts factorial_8

#Exe 6
puts 3.2 * 3.2
puts 4.6 * 4.6
puts 24.678 * 24.678

#exe 7
# it tells me a ) was used instead of a } causing a syntax error
