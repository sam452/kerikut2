class CommoditiesController < ApplicationController
  def show
    @commodity = Commodity.find(params[:id])
    #@price = Price.find_by_commodity_id(params[:commodity_id])
  end

end