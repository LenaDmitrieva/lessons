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
    @train.select{|train| train.type == :pass}.size
  end

  def train_depart(train)
    @train.delete(train)
  end

  def to_s
    "Станция #{@name}: приняты поезда: #{@train}"
  end

end


class Route

  def initialize(first_st, last_st)
    @first_st = first_st
    @last_st = last_st
    @name_r = [first_st, last_st] 	
  end

  def add_station(name_st)
    @name_st = name_st
    @name_r.insert(1, name_st)
  end

  def delete_station(name_st)
    @name_st = name_st
    @name_r.delete(name_st)
  end

  def list_station
    puts @name_r
  end 

  def to_s
    "Маршрут #{@name_r}"    
  end

end

class Train

  attr_accessor :speed

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
    @route = []
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
    self.speed = 0
    @carriage += 1
  end

  def cut_off_carriage
    self.speed = 0
    @carriage -= 1
  end

  def accept_route
    @route = @name_r
    @station = @name_r[0]
  end

  def to_s
    "Поезд №#{@number} #{@type}(#{@carriage} вагонов. Скорость: #{@speed})"
  end

end
