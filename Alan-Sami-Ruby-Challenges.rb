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

# p my_phone phone


class Task 
  def initialize title, des, done
  @title = title
  @des = des
  @done = done
  @status = "status done"
  end

  def title
    @title
  end

  def des
    @des
  end

  def done
    @done
  end

  def status
    @status
  end

end

# task1 = Task.new 'chores', 'vaccum', 'finish'
# p task1.title
# p task1.des
# p task1.done
# p task1.status


class Color
  attr_accessor :color1, :color2, :color3
  def initialize(color1, color2, color3)
    @color1 = color1
    @color2 = color2
    @color3 = color3
    # p "These are our colors: #{color1} #{color2} and #{color3}"
  end

    def colors
      p "These are our colors: #{@color1} #{@color2} and #{@color3}"
  end
end

newColor = Color.new('blue', 'red', 'green')
# p newColor.color1
# p newColor.color2
# p newColor.color3

newColor.color1 = "yellow"

newColor.colors



