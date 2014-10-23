# Inputs
# Upper right coordinates of the plateau
# Rover's start position, series of instructions telling rover how to explore plateau
# Rover's postion (2 integers and a letter separated by spaces) coordinates and orientation

class Rover
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	# accept and instruction and decide whether to tell the rover to move or turn
	def read_instruction 
	
	end

	# affects the position of the rover and updates coordinates if necessary
	def move
		
	end

	# affects the direction of the rover; either L or R
	def turn
		
	end
end