# Variables and scopes

# variables are lower snake_cased
count = 10

def print_count
  count = 5
  puts count
end

print_count

puts count

# defining global variable
$log_level = "debug" # sets the log level
