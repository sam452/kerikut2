class CommoditiesController < ApplicationController
  def show
    @commodity = Commodity.find(params[:id])
  end
  
  def index
    #@commodity = Price.all
  end
  
#binding.pry
end
