class VolumeCommoditiesController < ApplicationController

  def new
    @volume = Volume.new
    @commodity = Commodity.find(params[:id])
  end
  
end
