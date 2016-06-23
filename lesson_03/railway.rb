class Station

  def initialize(name)
    @name = name
    @train = []
  end

  def train_list
    puts @train
  end

  def add_train(train)
    @train << train
    puts @train
  end

  def train_type_list
    puts "На станции #{@train.select{|train| train.type == :pass}.size} пассажирских поездов" 
    puts "На станции #{@train.select{|train| train.type == :goods}.size} грузовых поездов"
  end

  def train_depart(train)
    @train.delete(train)
  end

  def to_s
    "Станция #{@name}: приняты поезда: #{@train}"
  end

end


class Route

  attr_reader :stations

  def initialize(first_st, last_st)
    @stations = [first_st, last_st] 	
  end

  def add_station(station)
    @stations.insert(1, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end

  def list_station
    puts @stations
  end 

  def to_s
    "Маршрут #{@stations}"    
  end

end

class Train

  attr_reader :speed

  attr_reader :type

  # def speed=(speed)
  #   @speed = speed
  # end

  # def speed
  #   @speed
  # end

  def initialize(number, type, carriage)
    @number = number
    @type = type
    @carriage = carriage
    @speed = 0
  end

  def go
    self.speed = 60
  end

  def current_speed
    puts @speed
  end

  def stop
    self.speed = 0
  end

  def carriage_amount
    puts @carriage
  end

  def hitch_carriage
    if self.speed == 0
      @carriage += 1
    end
  end

  def cut_off_carriage
    if self.speed == 0
      @carriage -= 1
    end
  end

  def accept_route(route)
    @route = route
    @station_index = 0
    @route.stations[@station_index].add_train(self)
    puts "Принят маршрут #{@route}, текущая станция #{@route.stations[@station_index]}"
  end

  def next_station
    return if @route.stations[@station_index + 1] == nil
    @route.stations[@station_index].train_depart(self)
    @station_index += 1
    @route.stations[@station_index].add_train(self)
  end

  def show_stations
    if @route
      puts "Предыдущая: #{@route.stations[@station_index - 1]}" if @station_index > 0
      puts "Текущая: #{@route.stations[@station_index]}"
      puts "Следующая: #{@route.stations[@station_index + 1]}" if @route.stations[@station_index + 1]
    end
  end
  
  def to_s
    "Поезд №#{@number} #{@type}(#{@carriage} вагонов. Скорость: #{@speed}) Текущий Маршрут: #{@route} Текущая Станция: #{@station}"
  end

end
