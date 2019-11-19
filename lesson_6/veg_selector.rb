Given this data structure write some code to return an array containing the colors of 
the fruits and the sizes of the vegetables. The sizes 
should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

#if value[:type] == 'fruit'
#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

new_array = []
hsh.select do |_, attrib|
  #puts fruit, attrib
  if attrib[:size] == 'medium'
    puts attrib[:colors]
    #new_array << :colors.value
  end
end
