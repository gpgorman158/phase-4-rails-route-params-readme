class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def extra
    cheese_name = Cheese.find_by(name: params[:name])
    render json: cheese_name
  end
  
  def show
    cheese = Cheese.find(params[:id])
    render json: cheese
  end

  

end
