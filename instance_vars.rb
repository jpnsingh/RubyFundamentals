## Learning Instances and Variables

class Spaceship
  def launch(destination)
    @destination = destination
    # @destination as instance variable
  end

  # instance methods are public by default
  def destination # getter for instance variable
    @destination
  end
end

# creating new instance of an object
ship = Spaceship.new

# give the unique identifier of an object
puts ship.object_id

# calling the method
ship.launch('Earth')

# inspect an object
puts ship.inspect

# same as inspecting an object
p ship


puts ship.destination # this would err as instance vars aren't visible outside of class... unless we add a getter...
