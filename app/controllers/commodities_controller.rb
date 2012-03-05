class CommoditiesController < ApplicationController
  def show
    @commodity = Commodity.find(params[:id])
  end
  
#binding.pry
end
