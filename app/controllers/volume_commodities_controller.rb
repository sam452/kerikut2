class VolumeCommoditiesController < ApplicationController

  def new
    @volume = Volume.new
    @commodity = Commodity.find(params[:id])
  end
  
  def create
    
  end

end
