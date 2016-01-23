## Objects and Variables

# a becomes a label for String "abc"
a = "abc"
puts 'a: ' + a

# b also refers to the same String object
b = a
puts 'b: ' + b

# modifying a would change both a and b as they're referring to the same object
a.upcase!
puts 'a: ' + a
puts 'b: ' + b

# clone would create a new copy (shallow copy) of the object
# hence b now refers to a different object and both can be modified separately
b = a.clone
b.downcase!
puts 'a: ' + a
puts 'b: ' + b

## IMP: objects are passed by reference in method calls
