class ChoresController < ApplicationController
  def show
    @chore = Chore.find params[:id]
  end
  
  def index
    @chores = if params[:manager_id]
      Manager.find(params[:manager_id]).chores
    elsif params[:unit_id]
      Unit.find(params[:unit_id]).chores
    else
      Chore.all
    end
  end
  
  def new
    @chore = Chore.new params[:chore]
    @chore.manager_id ||= params[:manager_id]
    @chore.unit_id ||= params[:unit_id]
  end
  
  def create
    @chore = Chore.create params[:chore]
    redirect_to chores_path
  end
  
  def edit
    @chore = Chore.find params[:id]
  end
  
  def update
    @chore = Chore.find params[:id]
    @chore.update_attributes params[:chore]
    redirect_to chores_path
  end
  
  def complete
    @chore = Chore.find params[:id]
    @chore.update_attribute :complete, true
    redirect_to chores_path
  end
  
  def destroy
    @chore = Chore.find params[:id]
    @chore.destroy
    redirect_to chores_path
  end
end