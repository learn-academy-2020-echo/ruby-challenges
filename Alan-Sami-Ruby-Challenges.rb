# Hashes
  phone = Hash.new
  phone[:name1] = 'alan'
  phone[:name2] = 'sami'
  phone[:name3] = 'sarah'
  phone[:name4] = 'ryan'
  phone[:name5] = 'luke'

  # p phone

  # p phone[:name1]
  # p phone[:name2]
  # p phone[:name3]
  # p phone[:name4]
  # p phone[:name5]

phone[:name1] = 'teddy'
phone[:name2] = 'andee'


# p phone [:name1]
# p phone [:name2]

# p phone[:name1] = 'teddy'
phone[:name11] = phone.delete :name1
phone.delete :name2
phone.delete :name3



phone.each do |key, value|
  # p "key is #{key}, and value is #{value}"
end
# As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
def my_phone (phone)
  phone = phone.map do |key, value|
  p "#{key.capitalize} = #{value.capitalize}"
  end
end

p my_phone phone
