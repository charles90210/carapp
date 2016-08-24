# Create the Car class
class Car
  # initialize function , takes arguments for make and model_year. Sets default for speed and lights
  def initialize(make,model_year)
    @make = make
    @model_year = model_year
    @speed = 0
    #create a variable for for the lights
    @lights=false
    @parking_brake = 'on'
  end

  def make= m
    @make = m
  end

  def model_year= my
    @model_year = my
  end

  def speed= s
    @speed = s
  end

  def make
    @make
  end

  def model_year
    @model_year
  end

  def speed
    @speed
  end
  # Purpose: to increase the speed when accelerate is called
  def accelerate
     @speed = @speed + 10.0
   end
   # Purpose: to reduce the speed when brake is called
  def brake
  if @speed < 7.0
    @speed = 0.0
  else
    @speed = @speed - 7.0
    end
  end

  def lights= l
    @lights = l
  end

  def lights
    @lights
  end

# Purpose: to toggle the lights on or off
   def toggle_lights
     if @lights == false
       @lights = true
     elsif @lights == true
       @lights = false
     end
   end

def parking_brake= pb
  @parking_brake = pb
end

def parking_brake
  @parking_brake
end
# Purpose: to toggle the parking brake on or off

end #end of car class
