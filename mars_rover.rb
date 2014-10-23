class Rover
	attr_accessor :x, :y, :direction
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	#should accept an instruction and decide whether to tell the rover to move or turn
	def read_instruction(instruction)
		if instruction == "M"
			move
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right
		end
	end

	#affects the position of the rover
	#depending on current direction and position, 
	#you'll need to update the x or y coordinates.
	def move
		if @direction == "N"
			@y += 1	
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1
		elsif @direction == "E"
			@x += 1
		end
	end	

	#affects the direction of the rover
	#depending on the current direction of the rover, 
	#the new direction will be determined with either turning L or R
	def turn_left
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end

end

rover = Rover.new(0, 0, "S")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"
rover.read_instruction("L")
puts "Rover's current position is #{rover.x}, #{rover.y}, facing #{rover.direction}"