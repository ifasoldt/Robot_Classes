#!/usr/bin/ruby
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
    self.name = newname
  end
end

our_class = ["Isaiah", "Marie", "Sean", "Daniel"]

robot_classmates = []

our_class.each do |x|
robot_classmates << Robot.new(x)
end

robot_class = our_class.collect{|x| Robot.new(x)}

array_of_classes = [Robot, ActorUnit, BendingUnit]

random_object_class = our_class.collect{|x| array_of_classes.shuffle[0].new(x)}
