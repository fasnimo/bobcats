class BoatsController < ApplicationController

    def new 
      @boat = Boat.new
    end

    def create 
      @boat = Boat.new(boat_params)
    end

    def show
      @boat = Boat.find_by(id: params[:id])
    end

    private 

    def boat_params 
      params.require(:boat).permit(:name, :length)
    end
end
