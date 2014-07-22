$LOAD_PATH << 'lib'
require 'minitest/autorun'

# When adding a new ruby implementation file to your lib directory,
# explicitly require it here like:
# require 'some_file'
require 'matrix'
require 'vector'

point1 = VectorPoint[2, 4]
point2 = VectorPoint[3, 4]

puts "DISTANCE"
puts point1.distance(point2)
