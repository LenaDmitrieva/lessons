puts "Как тебя зовут?"
name = gets.chomp
puts "#{name}, каков твой рост в сантиметрах?"
height = gets.chomp
weight = height.to_i - 110
if weight > 0 
	puts "#{name}, твой идеальный вес #{height.to_i - 110} кг!"
else 
	puts "#{name}, твой вес уже оптимален!"
end