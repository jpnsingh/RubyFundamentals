## Learning Accessors...

class Spaceship
  # attr_accessor is an alternate of providing setters/getters for instance variables
  attr_accessor :destination # :destination is a symbol representing the instance variable
  # attr_accessor is a combination or attr_reader and attr_writer
  attr_reader :name
  attr_writer :name

  attr_accessor :destination, :name # multiple accessors could be defined at once by a comma-separated list

  # attr_accessor actually adds a pair of methods behind the scene
=begin
  def destination
    @destination
  end

  def destination=(new_destination) # '=' sign at the end denotes that its a setter
    @destination = new_destination
  end
=end

  def cancel_launch
    destination = "local"        # this wouldn't launch the accessor and would create a local variable instead
    puts destination
    self.destination = "' '"   # so it needs to be qualified with 'self.' if it has to launch the accessor method
    puts self.destination
  end

end

ship = Spaceship.new

ship.destination = 'Earth'

p ship
p ship.destination # or puts ship.destination

ship.name = "No access" # not accessible if declared as attr_reader i.e. read only

p ship

ship.cancel_launch
