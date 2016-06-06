fib = []
i = 0
n = 1
while i <= 100
	i +=i
	n += n - i
  fib << n
end
puts "Числа Фибоначчи = #{fib}"