

directions = ["north", "south", "east", "west"]

compass = {n: directions[0], s: directions[1], e: directions[2], w: directions[3]}

class Direction
  attr_reader :abbreviation, :direction_name

  def initialize(abbreviation, direction_name)
    @abbreviation = abbreviation
    @direction_name = direction_name
  end

end

class Compass

  attr_reader :directions

  def initialize
    north = Direction.new("n", "North")
    south = Direction.new("s", "South")
    east = Direction.new("e", "East")
    west = Direction.new("w", "West")
    @directions = [north, south, east, west]
  end

end

my_compass = Compass.new

require 'sinatra'

get '/' do

  query = params[:direction]
  response = ""
  second_response = "Looks like you're lost."

  my_compass.directions.each do |dir|
    if dir.abbreviation == query
      response = "The direction corrosponding to #{dir.abbreviation} is #{dir.direction_name}."
    end
  end
  if response.empty?
    second_response
  else
    response
  end

end


#TESTING --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# p compass_directions[0].direction_name


# p directions[3]

# p compass[:n]


# def dir_hash
#   @directions
# end


# p Compass.directions[1].abbreviation
# p Compass.directions[1].direction_name

# paramiters =  my_compass.dir_hash


# paramiters.each do |direction|
#    direction.each do |key, value|
#
# end

# paramiters.each do |hash|
#     if query == key
#         response = "The direction corrosponding to #{key} is #{value}."
#     else
#         response = "Looks like you're lost."
#     end
#   end
# end
# response


# p d.abbreviation

# require 'sinatra'
#
# get '/' do
#   query = params[:direction]
#
#   response = ""
#
# end
