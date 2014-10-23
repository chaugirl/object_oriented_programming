class Rover
	attr_accessor :x, :y, :direction
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	#should accept an instruction and decide whether to tell the rover to move or turn
	def read_instruction(instruction)

		instruction_array = instruction.chars.to_a

		instruction_array.each { |instr| 
		if instr == "M"
			move
		elsif instr == "L"
			turn_left
		elsif instr == "R"
			turn_right
		end
		}
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
			@direction = "W"
		elsif @direction == "E"
			@direction = "N"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "W"
			@direction = "S"
		end	
	end

	def turn_right
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

rover1 = Rover.new(1, 2, "N")
puts "Rover1's current position is #{rover1.x}, #{rover1.y}, facing #{rover1.direction}"
rover1.read_instruction("LMLMLMLMM")
puts "Rover1's current position is #{rover1.x}, #{rover1.y}, facing #{rover1.direction}"

rover2 = Rover.new(3, 3, "E")
puts "Rover2's current position is #{rover2.x}, #{rover2.y}, facing #{rover2.direction}"
rover2.read_instruction("MMRMMRMRRM")
puts "Rover2's current position is #{rover2.x}, #{rover2.y}, facing #{rover2.direction}"