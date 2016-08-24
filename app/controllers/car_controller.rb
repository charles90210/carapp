class CarController < ApplicationController
  # Purpose: collect the user input and create car object and store it in a cookie and redirect to the status page
  def create_car
    @car = Car.new(params[:make],params[:model_year])
    cookies[:car] = @car.to_yaml
    redirect_to '/car/status'
  end
  # Purpose: create index method for landing page
  def index
  end
  # Purpose: create the status method and recall the car object from the cookie
  def status
    @car= YAML.load(cookies[:car])
  end
  # Purpose: get the car object from the cookie, calling the accelerate method and updating the cookie
  def accelerate
    @car = YAML.load(cookies[:car])
    @car.accelerate
    cookies[:car] = @car.to_yaml
    redirect_to '/car/status'
  end
  #Purpose: get teh car object from the cookie, call the brake method and updating the cookie
  def brake
    @car = YAML.load(cookies[:car])
    @car.brake
    cookies[:car] = @car.to_yaml
    redirect_to '/car/status'
  end

  def toggle_lights
    @car = YAML.load(cookies[:car])
    @car.toggle_lights
    cookies[:car] = @car.to_yaml
    redirect_to '/car/status'
  end

  def set_parking_brake
    @car = YAML.load(cookies[:car])
    @car.parking_brake=params[:parking_brake]
    cookies[:car] = @car.to_yaml
    redirect_to '/car/status'
  end

end
