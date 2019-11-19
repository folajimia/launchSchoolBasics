require 'securerandom'

def uuid_gen
  "#{SecureRandom.hex(8)}-#{SecureRandom.hex(4)}-#{SecureRandom.hex(4)}-#{SecureRandom.hex(4)}-#{SecureRandom.hex(12)}"
end

puts uuid_gen
