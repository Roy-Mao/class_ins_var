class Parent
  @@family_things = []
  @shared_things = []

  def self.family_things
    @@family_things
  end

  def self.shared_things
    @shared_things
  end

  attr_accessor :my_things

  def initialize
    @my_things = []
  end

  def family_things
    self.class.family_things
  end

  def shared_things
    self.class.shared_things
  end
end


class Child < Parent
  @shared_things = []  
end

mama = Parent.new
papa = Parent.new
joey = Child.new
suzy = Child.new

Parent.family_things << :house
papa.family_things << :vacuum
mama.shared_things << :car
papa.shared_things << :blender
papa.my_things << :quadcopter
joey.my_things << :bike
suzy.my_things << :doll
joey.shared_things << :puzzle
suzy.shared_things << :blocks

p Parent.family_things
p Child.family_things
p papa.family_things
p mama.family_things
p joey.family_things
p suzy.family_things

p Parent.shared_things
p Child.shared_things
p papa.shared_things
p mama.shared_things
p joey.shared_things
p suzy.shared_things

p papa.my_things
p mama.my_things
p joey.my_things
p suzy.my_things


