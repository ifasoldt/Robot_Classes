class Robot
  attr_accessor :name, :height
  def initialize(name, height = 10)
    @name = name
    @height = height
  end

  def method_missing(*)
     "Does not compute"
  end

  def say_hi
    "Hi"
  end

  def say_name
    "my name is #{name}"
  end
end

class BendingUnit < Robot
  def bend(object_to_bend)
    puts "Bend #{object_to_bend}!"
  end
end

class ActorUnit < Robot
  def change_name(newname)
    @name = newname
  end
end


jake = Robot.new("Jake")
puts jake.say_name

chris = BendingUnit.new("Chris")
chris.bend("pipe")

bob = ActorUnit.new("Bob")
puts bob.name
bob.change_name("Billy Bob")
puts bob.name

our_class = ["Isaiah", "Marie", "Sean", "Daniel"]

classmates = []


our_class.each do |x|
classmates << Robot.new(x)
end

array_of_classes = ["Robot", "ActorUnit", "BendingUnit"]

robot_class = our_class.collect{|x| Robot.new(x)}

puts robot_class[1].inspect
puts classmates[0].inspect

puts robot_class[2].height

puts jake.asdfsdf
