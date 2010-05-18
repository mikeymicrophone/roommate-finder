class MonthsController < ApplicationController
  def show
    @month = Month.find params[:id]
  end
  
  def index
    @months = Month.all
  end
  
  def new
    @month = Month.new params[:month]
  end
  
  def create
    @month = Month.create params[:month]
    redirect_to months_path
  end
  
  def edit
    @month = Month.find params[:id]
  end
  
  def update
    @month = Month.find params[:id]
    @month.update_attributes params[:month]
    redirect_to months_path
  end
  
  def destroy
    @month = Month.find params[:id]
    @month.destroy
    redirect_to months_path
  end
end