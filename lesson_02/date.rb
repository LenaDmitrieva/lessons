months_l = {1=>31, 2=>29, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31}
months = {1=>31, 2=>28, 3=>31, 4=>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31}
puts "Введите день, месяц и год"
puts "День d = "
d = gets.chomp
puts "Месяц m = "
m = gets.chomp
puts "Год y = "
y = gets.chomp
key=1
mon = 0
mon_l = 0
while key < m.to_i
	  mon_l = mon_l + months_l[key]
	  mon += months[key]
   key += 1  
end
if y.to_i % 4 == 0
	date = d.to_i + mon_l
else 
	date = d.to_i + mon
end
puts "Этот день является #{date} от начала года"