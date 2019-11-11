require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store2 = Store.find_by(id: 2)
puts @store2.id

@store1.name = 'Cool Store'
@store1.save
puts @store1.name