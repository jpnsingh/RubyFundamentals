## Learning class variables

class Rocket
  @@name = 'Rocket'

  def self.name
    @@name
  end
end

class Spaceship < Rocket
  # class variables are prefixed with "@@"
  @@name = 'Spaceship'
end

ship = Spaceship.new

# ship.name
# ship.name # would throw an error as name is a class variable

puts Spaceship.name
puts Rocket.name
