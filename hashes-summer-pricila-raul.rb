# As a developer, I can create a hash called my_phone using the Ruby method .new.

my_phone = Hash.new
# p my_phone

# As a developer, I can add five key:value pairs of app names and their descriptions to my hash.

my_phone [:googlemaps] = 'helps navigate and find places'
my_phone [:whatsapp] = 'chatting with friends'
my_phone [:uber] = 'rideshare app'
my_phone [:snapchat] = 'sending pictures to friends that go away after viewing'
my_phone [:venmo] = 'sending money between accounts'

# p my_phone

# As a developer, I can return a value from my_phone by passing in the name of a key.

# p my_phone[:googlemaps]

# As a developer, I can update two keys in my_phone.

my_phone[:maps] = my_phone.delete :googlemaps
# p my_phone[:maps]

my_phone[:lyft] = my_phone.delete :uber
# p my_phone[:lyft]

# p my_phone


# As a developer, I can update two values in my_phone.

my_phone[:lyft] = 'a better rideshare app than uber'

# p my_phone[:lyft]

my_phone[:whatsapp] = 'easier way to message people in other countries'

# p my_phone[:whatsapp]

# As a developer, I can delete two key:value pairs from my_phone.

my_phone.delete :lyft
my_phone.delete :whatsapp
# p my_phone

# As a developer, I can use an enumerable method to return information about all of my_phone's applications.

my_phone.each do |key, value|
    p "key is #{key} and value is #{value}."
end
