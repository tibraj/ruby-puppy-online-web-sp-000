# Add your code here
class Dog
attr_accessor :name
@@all = []
def initialize(name)
  @name = name
  save
end
def save
  @@all << self
end
def self.all #From inside the Dog class, we can access the @@all class variable, but whenever we might be interacting with our Dog class from the outside, this .all class method acts as our direct interface to the @@all variable.
  @@all
end
def self.print_all
  @@all.each do |dog|
    puts "#{dog.name}"
  end
end
def self.clear_all
  @@all.clear
end
end
