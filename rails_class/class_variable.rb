class Vehicle
  attr_accessor :age
  #@@object_count = 0

  def initialize
   # @@object_count += 1
  end

  def self.total_vehicle
    #puts @object_count
  end

  def calculate_age
    get_age
  end
  private
  def get_age
    puts "Age is: " + @age.to_s
  end
end

class Bike < Vehicle
  attr_accessor :model 
  def initialize(model)
    super()
    @model = model
  end
end

class Car < Vehicle
  attr_accessor :model 
  def initialize(model)
    super()
    @model = model
  end
end

v = Vehicle.new
v.age = 20
v.calculate_age




#Bike.new("Shine")
#Bike.new("Unicorn")
#Bike.new("Pulsar")
#
#Car.new("Hundai")
#Car.new("Toyota")
#
#Vehicle.total_vehicle
