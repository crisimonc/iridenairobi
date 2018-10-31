class MotorcyclesController < ApplicationController

	def index
	  @motorcycles = Motorcycle.all
	end

	def show
	  @motorcycle = Motorcycle.find(params[:id])
	end

	def new
      @motorcycle = Motorcycle.new
    end

    def create
      @motorcycle = Motorcycle.new(motorcycle_params)
      @motorcycle.save

      redirect_to @motorcycle
    end

	def edit
      @motorcycle = Motorcycle.find(params[:id])
    end

    def update
      @motorcycle = Motorcycle.find(params[:id])
      @motorcycle.update(motorcycle_params)
      redirect_to motorcycle_path(@motorcycle)
    end

 
private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :motor_type, :description, :price, :picture)
  end

end
