## Learning class methods

class Spaceship
  # class methods are prefixed with "self."
  def self.launch
    puts 'Launching...'
  end
end

ship = Spaceship.new

# ship.launch   # would throw an error as launch is a class method

Spaceship.launch
