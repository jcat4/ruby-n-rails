puts "Simple Calculator"
20.times { print "=" }
puts "\n\n"

print "First num: "
first_num = gets.chomp.to_f

print "Second num: "
second_num = gets.chomp.to_f

puts "Would you like to add, subtract, multiply, or divide?"
op = gets.chomp

case op
when "add"
    result = first_num + second_num
when "subtract"
    result = first_num - second_num
when "multiple"
    result = first_num * second_num
when "divide"
    result = first_num / second_num
else
    puts "input \"#{op}\" isn't valid"
    return
end

puts "The answer is #{result}"