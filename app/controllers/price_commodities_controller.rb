class PriceCommoditiesController < ApplicationController

  def new
    @price = Price.new
    @commodity = Commodity.find(params[:id])
  end
  
  def show
    @price = Price.find_by_name(params[:commodity_id])
    @commodity = Commodity.find(params[:commodity_id])
 end
  
  def index
  end
  
end