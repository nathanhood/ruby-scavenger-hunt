$LOAD_PATH << 'lib'
require 'minitest/autorun'

# When adding a new ruby implementation file to your lib directory,
# explicitly require it here like:
# require 'some_file'
require 'vector'

point1 = VectorPoint.new(2, 4)
point2 = VectorPoint.new(10, 7)

puts "DISTANCE"
puts point1.distance(point2)
