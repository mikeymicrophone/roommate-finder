class UnitsController < ApplicationController
  before_filter :require_manager
  
  def new
    @unit = Unit.new params[:unit]
  end
  
  def create
    @unit = Unit.create params[:unit]
    redirect_to units_path
  end
  
  def index
    @units = if params[:month_id]
      Month.find(params[:month_id]).units
    else
      Unit.all
    end
  end
  
  def show
    @unit = Unit.find params[:id]
  end
  
  def edit
    @unit = Unit.find params[:id]
  end
  
  def update
    @unit = Unit.find params[:id]
    @unit.update_attributes params[:unit]
    redirect_to @unit
  end
  
  def destroy
    @unit = Unit.find params[:id]
    @unit.destroy
    redirect_to units_path
  end
end