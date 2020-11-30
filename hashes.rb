my_phone = Hash.new

my_phone[:google_mail] = 'Open and interact with GMail account'
my_phone[:facebook] = 'Find and ineract with friends'
my_phone[:youtube] = 'Find and discover videos'
my_phone[:cashapp] = 'Send and recieve money to friends'
my_phone[:netflix] = 'Enjoy TV and movies'

p my_phone [:netflix]
p my_phone [:cashapp]

my_phone[:hulu] = my_phone.delete :netflix
my_phone[:venmo] = my_phone.delete :cashapp
# p my_phone

my_phone[:hulu] = 'To find shows and movies to watch with friends'
my_phone[:facebook] = 'Find and interact with friends'
# p my_phone

my_phone.delete(:facebook)
my_phone.delete(:hulu)

p my_phone


def my_phone_apps hash
  hash.each do |key, value|
  puts "The app is #{key} and is used to #{value}"
  end
end

p my_phone_apps my_phone


def my_phone_apps_array hash
  hash.map do |key, value|
  puts "The app is #{key.capitalize} and is used to #{value}"
  end
end

p my_phone_apps_array my_phone
