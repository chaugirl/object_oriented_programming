# Inputs
# Upper right coordinates of the plateau
# Rover's start position, series of instructions telling rover how to explore plateau
# Rover's postion (2 integers and a letter separated by spaces) coordinates and orientation

class Rover
	attr_accessor :x, :y, :direction
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	# accept and instruction and decide whether to tell the rover to move or turn
	# def read_instruction ('move_turn_instr')
	# 	@move_turn_instr = move_turn_instr

	# 	#break up the string into individual letters.
	# 	@move_turn_instr.each_char { |direction| 
	# 	if direction == N && instr == L
	# 		direction is now west
	# 	elsif direction == N && instr == R
	# 		direction is now east
	# 	elsif direction == E && instr == L
	# 		direction is now N
	# 	elsif direction == E && instr == R
	# 		direction is now S
	# 	elsif direction == S && instr == L
	# 		direction is now E
	# 	elsif direction == S && instr == R
	# 		direction is now west
	# 	elsif direction == W && instr == L
	# 		direction is now S
	# 	elsif direction == W && instr == R
	# 		direction is now N
	# 	else
	# 		@x++
	# 	}
	# end
	def read_instruction(instruction)
		if instruction == "M"
			move
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		end
	end
		def move
			if @direction == "N"
				@y += 1
			end	
		end	
end

rover = Rover.new(0, 0, "N")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"
rover.read_instruction("M")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"