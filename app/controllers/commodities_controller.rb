class CommoditiesController < ApplicationController
  def show
    @commodity = Commodity.find(params[:id])
  end

end
