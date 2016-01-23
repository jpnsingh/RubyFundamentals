## Learning Inheritance
# a class can only inherit from a single class like Spaceship << Rocket << Object << BasicObject
# multiple inheritance isn't allowed in Ruby, however, through Modules we can achieve this... (explained later)


# IMP: A method called on an object is traversed through it's hierarchy (inherited classes) if not found in the object
# If not found at all, it would throw an error

class Rocket
  attr_accessor :name

  def launch
    puts 'Rocket.launch:: Launching...'
  end
end

class Spaceship < Rocket
  attr_accessor :destination

  def launch
    print self.name + ': '
    super   # Invokes the method from super class
  end
end

ship = Spaceship.new

ship.name = 'Spaceship 1'

p ship

ship.destination = 'Moon'

p ship

ship.launch
