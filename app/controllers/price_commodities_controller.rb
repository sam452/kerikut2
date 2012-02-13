class PriceCommoditiesController < ApplicationController

  def new
    @price = Price.new
    @commodity = Commodity.find(params[:id])
  end
  
end