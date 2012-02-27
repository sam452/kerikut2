class VolumesController < ApplicationController
  def new
  end
  
  def show
    
  end
  
  def create 
    @volume = Volume.new(params[:volume])

    respond_to do |format|
      if @volume.save
        
        format.html { redirect_to(@volume, :notice => 'Volume was successfully created.') }
        format.xml  { render :xml => @volume, :status => :created, :location => @volume }
        format.json  { render json: @volume, status: :created, location: @volume }
     else
        format.html { render :action => "new" }
        format.xml  { render :xml => @volume.errors, :status => :unprocessable_entity }
        format.json { render json: @volume.errors, status: :unprocessable_entity }
      end
    end

  end

end
