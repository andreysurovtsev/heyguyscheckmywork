#= Overview
# HelloWorld: This outputs helloworld or whatever else
#
#=Usage
#
#  Usage: ruby hello_world.rb <options>
#
#==Options
#
#  There are no options at this time. Sorry!
#
#=== For future use
#
# Please update me for future consideration!
#
class MyFirstClass
	def first_method
		"test"
	end
end

puts "hello world!"

first_class = MyFirstClass.new
puts first_class.first_method

