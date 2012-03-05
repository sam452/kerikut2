class CommoditiesController < ApplicationController
  def show
    @commodity = Commodity.find(params[:id])
    @price = Price.find_by_commodity_id(params[:all])
  end
#binding.pry
end
