flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

def array_to_hash(flintstones)

  flint_hash = {}
  count = 0
  length_flint = flintstones.size
  while count < length_flint
    flint_hash[count] = flintstones[count]
    count = count+1
  end
  flint_hash
end

puts array_to_hash(flintstones)

#correction

def array_to_hash_2(flintstones)
  flintstones_hash = {}
  flintstones.each_with_index do |key, index|
    flintstones_hash[key] = index
  end
  flintstones_hash
end

puts array_to_hash_2(flintstones)
