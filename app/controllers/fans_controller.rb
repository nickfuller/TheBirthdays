class FansController < ApplicationController

  def index
    @fans = Fans.all
  end

  def new
  end
  
  def create
    @fan = Fans.new
    @fan.name = params[:name]
    @fan.email = params[:email]
    @fan.password = params[:password]
    @fan.save
    redirect_to fan_url(@fan.id)
  end
  
  def show
    @fan = Fans.find_by_id(params[:id])
  end
  
  def edit
    @fan = Fans.find_by_id(params[:id])
  end
  
  def update
    @fan = Fans.find_by_id(params[:id])
    @fan.name = params[:name]
    @fan.email = params[:email]
    @fan.password = params[:password]
    @fan.save
    redirect_to fan_url(@fan.id)
  end
  
  def destroy
    Fans.find_by_id(params[:id]).destroy
    redirect_to home_url
  end
  
end