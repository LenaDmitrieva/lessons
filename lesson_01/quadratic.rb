puts "Введите коэффициенты уравнения"
puts "a = "
a = gets.to_i
puts "b = "
b = gets.to_i
puts "c = "
c = gets.to_i
d = b**2 - 4*a*c
if d > 0 
	puts "Дискриминант равен d = #{d}, корни уравнения x1 = #{(- b + Math.sqrt(d)) / (2 * a)}, x2 = #{(- b - Math.sqrt(d)) / (2 * a)}."
end
	if d == 0 
		puts "Дискриминант равен d = #{d}, корень уравнения x1 = x2 = #{(-b) / (2 * a)}."
	end
		if d < 0
			puts "Уравнение не имеет корней!"
		end