class Person
	def initialize(name)
		@name = name
	end
	def greeting
		puts "Hi, my name is #{@name}"
	end
end

class Student < Person
	def learn
		puts "I get it"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby has an Object"
	end	
end

Instructor.new("Chris").greeting


