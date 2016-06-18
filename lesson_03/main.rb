load 'railway.rb'

t12 = Train.new(12, :pass, 9)
t48 = Train.new(48, :pass, 10)
t3 = Train.new(3, :goods, 13)
puts t12, t48, t3

d = Station.new('Донецк')
s = Station.new('Симферополь')
z = Station.new('Запорожье')
k = Station.new('Киев')
puts d, s, z, k

r1 = Route.new(d, k)
r2 = Route.new(s, k)
r1.add_station(z)
r2.add_station(z)
puts "Станции маршрута 1:"
puts r1.list_station
puts "Станции маршрута 2:"
puts r2.list_station

d.add_train(t48)
t48.accept_route(r1)
t48.next_station(r1)
z.train_type_list


