
# Here we name a new Hash class called my_phone.
my_phone = Hash.new
# We add new Keys and assign values below to 5 "app names"
my_phone[:instagram] = 'A place for sharing photos'
my_phone[:snapchat] = 'A place for friends!'
my_phone[:chess] = 'A game of conquest!'
my_phone[:pint_trest] = 'A place to find how to make brews!'
my_phone[:myspace] = 'Edit your top 5 NOW!'

# p my_phone[:instagram]
# Here we are changing app names and deleting the old app names, without chaning the descriptions
my_phone[:facebook] = my_phone.delete :instagram
my_phone[:pinterest] = my_phone.delete :pint_trest
# Here we are editing the values(description) and inputing new values
my_phone[:facebook] = 'A place to be 6!tCh about everything!'
my_phone[:pinterest] = 'A place for pictures!'
# p my_phone[:facebook]
#p my_phone[:pinterest]

# Here we are deleting keys (apps) off my_phone
my_phone.delete :snapchat
my_phone.delete :myspace

p my_phone

# Here we are creating a method where we map through our hash and gather our keys and values
def my_phone_method hash
  hash.map do |app, desc|
    "My #{app} is #{desc}"
  end
end
#executing our method to my_phone
p my_phone_method my_phone

# here we are creating a method to capitolize our key (app name) 
def my_phone_cap hash
  hash.map do |app, desc|
    "#{app.upcase}: #{desc}"
  end
end

p my_phone_cap my_phone
