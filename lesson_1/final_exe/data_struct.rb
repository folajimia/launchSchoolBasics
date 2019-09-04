
#Given the following data structures. Write a program that moves the
#information from the array into the empty hash that applies to the correct person


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
           ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

details = [:email, :address, :phone]




#contacts["Joe Smith"][:email] =contact_data[0][0]
#contacts["Joe Smith"][:address] =contact_data[0][1]
#contacts["Joe Smith"][:phone] =contact_data[0][2]
#contacts["Sally Johnson"][:email] =contact_data[1][0]

#contacts["Sally Johnson"][:address] =contact_data[1][1]
#contacts["Sally Johnson"][:phone] =contact_data[1][2]

#p contacts["Sally Johnson"][:phone]
#p contacts["Joe Smith"][:email]


#In exercise 12, we manually set the contacts hash values one by one. Now,
#programmatically loop or iterate over the contacts
#hash from exercise 12, and populate the associated data from the contact_data array.
#Hint: you will probably need to iterate over
#([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:


contacts.each do |key, value|
  bug = contact_data.shift
  details.each do |detail|
    contacts[key][detail]= bug.shift
  end
end


#contact_data.each do |item|



#contacts.each_key do |name|
#  names = name.split(" ")
#  puts names[0]
#  contact_data.each do |data|
#    data.each do |item|
      #puts item
      #names[0]
#      if  item.include?(names[0].downcase)
#        contacts[name] = data

#        p contacts

#      end



#      contacts[name] = data

#    end
#  end
#end

p contacts
