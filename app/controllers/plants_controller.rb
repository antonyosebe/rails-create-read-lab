class PlantsController < ApplicationController
    def index
        plants=Plant.all
        render json: plants
    end
    def show
        plants=Plant.find(params[:id])
        render json: plants
    end
    def create
        plant=Plant.create(name: params[:name],image: params[:image], price: params[:price])
        render json: plant, status: 201

    end

end
