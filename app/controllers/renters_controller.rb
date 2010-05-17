class RentersController < ApplicationController
  before_filter :require_manager
  
  def show
    @renter = Renter.find params[:id]
  end

  def new
    params[:renter] ||= {}
    params[:renter][:room_id] ||= params[:room_id]
    @renter = Renter.new params[:renter]
  end
  
  def create
    @renter = Renter.create params[:renter]
    redirect_to renters_path
  end
  
  def index
    @renters = Renter.all
  end
  
  def edit
    @renter = Renter.find params[:id]
  end
  
  def update
    @renter = Renter.find params[:id]
    redirect_to @renter
  end
  
  def destroy
    @renter = Renter.find params[:id]
    @renter.destroy
    redirect_to renters_path
  end
end
