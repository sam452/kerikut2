class PriceCommoditiesController < ApplicationController

  def new
    @price = Price.new
    @commodity = Commodity.find(params[:id])
  end
  
  def show
    @price = Price.find_by_commodity_id(params[:commodity_id])
  end
  
end