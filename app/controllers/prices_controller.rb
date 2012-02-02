class PricesController < ApplicationController
  def new
    @price = Price.new
  end

  def index
  end
  
  def create 
    @price = Price.new(params[:price])

    respond_to do |format|
      if @price.save
        format.html { redirect_to(@price, :notice => 'Price was successfully created.') }
        format.xml  { render :xml => @price, :status => :created, :location => @price }
        format.json  { render json: @price, status: :created, location: @price }
     else
        format.html { render :action => "new" }
        format.xml  { render :xml => @price.errors, :status => :unprocessable_entity }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end

  end

end
