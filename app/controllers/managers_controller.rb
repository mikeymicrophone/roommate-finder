class ManagersController < ApplicationController
  before_filter :require_manager
  
  def show
    @manager = Manager.find params[:id]
  end

  def new
    @manager = Manager.new params[:manager]
  end
  
  def create
    @manager = Manager.create params[:manager]
    redirect_to managers_path
  end
  
  def index
    @managers = Manager.all
  end
  
  def edit
    @manager = Manager.find params[:id]
  end
  
  def update
    @manager = Manager.find params[:id]
    @manager.update_attributes params[:manager]
    redirect_to @manager
  end
  
  def destroy
    @manager = Manager.find params[:id]
    @manager.destroy
    redirect_to managers_path
  end
  
  def activate
    @manager = Manager.find params[:id]
    @manager.update_attribute(:active, true)
    redirect_to managers_path
  end
end
