## Learning Virtual Attributes

class Spaceship
  def initialize
    @autopilot = Struct.new(:destination).new(nil)
  end

  # destination here becomes a Virtual Attribute
  # The interface doesn't change, however, it gets/sets another attribute
  def destination
    @autopilot.destination
  end

  def destination=(new_destination)
    @autopilot.destination = new_destination
  end

end

ship = Spaceship.new
ship.destination = 'Earth'

puts ship.destination
