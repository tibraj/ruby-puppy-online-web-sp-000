# Add your code here
class Dog
attr_accessor :name
@@all = []
def initialize(name)
  @name = name
  @@all << self
end
def self.all #From inside the Dog class, we can access the @@all class variable, but whenever we might be interacting with our Dog class from the outside, this .all class method acts as our direct interface to the @@all variable.
  @@all
end
def self.print_all(all)
  all.each do |dog|
    puts "#{dog}"
  end
end
end
