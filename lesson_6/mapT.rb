timer = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_timer = []
new_array = {}

timer.map do |arr|
  new_array = {}
  arr.each do | letter, number|
    new_number = number + 1
    new_array[letter]= new_number
  end
  new_timer.push(new_array)
end

p timer
p new_timer
