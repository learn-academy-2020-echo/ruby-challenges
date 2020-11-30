#create method called my_phone
my_phone = Hash.new

#create 5 key value pairs
my_phone [:contacts] = "list of phone contacts"
my_phone [:text_messages] = "written correspondence"
my_phone [:photos] = "gallery of photos taken with phone"
my_phone [:camera] = "app used to take photos"
my_phone [:gmail] = "google email application"

#return value from my_phone
# p my_phone [:gmail]
#
#
# #updating values
# my_phone [:photos] = "snapchat"
# p my_phone [:photos]
# my_phone [:gmail] = "email"
#
# #updating key
# my_phone [:facebook] = my_phone.delete :camera
# p my_phone
#
#
# #delete key: value pairs
# my_phone.delete :facebook
# my_phone.delete :gmail
#
# #create method
# def my_phone_info hash
#   hash.map do |key, value|
#   "my #{key} is #{value}"
#   end
# end
# p my_phone_info my_phone


#stretch challenge- array with app name capitalized and info
def my_phone_all hash
  hash.map do |key, value|
  key.upcase 
end

end

p my_phone_all my_phone
