fib = [1, 1]
i=2
n=2
	while n < 100
		n = fib[i - 1] + fib[i - 2]
	if n < 100 
		fib << n
	end
	i += 1
	end
puts "Числа Фибоначчи = #{fib}"