class CarsController < ApplicationController
  # before_action :set_car, only: [:show, :edit]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.new
  end

  def new
    @car = Car.new
  end

  def edit
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      creation_message = "#{@car.year} #{@car.make} #{@car.model} has been created. It costs #{@car.price}"
      redirect_to cars_path,
                  :notice => creation_message
    else
      render :json => @car.errors
      # render 'new'
    end
  end

  private
  # def set_car
  #   @car = Car.find(params[:id])
  # end

  def car_params
    params.require(:car).permit(:make, :model, :year, :price)
  end

  # update method should redirect after updating!

end
