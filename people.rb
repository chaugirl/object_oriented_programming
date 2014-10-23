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
Student.new("Christina").greeting

maria = Instructor.new("Maria")
maria.teach

arizona = Student.new("Arizona")
arizona.teach
# Above line does not work
# Arizona is an instance of the Student class
# The Student class has method 'learn'
# The Student class inherits the method 'greeting' from the Person class
# Both the Student class and the Person class DO NOT include the teach method.
# The teach method is only in the Instructor class

