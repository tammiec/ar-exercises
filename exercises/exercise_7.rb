require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
e = @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 10)
puts e.new_record?

# store_name = gets.chomp
# @store7 = Store.create(name: store_name)
# puts @store7.errors.messages
# puts @store7.new_record?
# puts Store.last.name
