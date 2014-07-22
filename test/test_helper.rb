$LOAD_PATH << 'lib'
require 'minitest/autorun'

# When adding a new ruby implementation file to your lib directory,
# explicitly require it here like:
# require 'some_file'
require 'vector'

point1 = VectorPoint[2, 4]
point2 = VectorPoint[3, 4]

puts point1.distance(point2)

point3 = VectorPoint[5, 6]

puts VectorPoint.path_length(point1, point2, point3)
