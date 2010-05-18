class ChoresController < ApplicationController
  def show
    @chore = Chore.find params[:id]
  end
  
  def index
    @chores = Chore.all
  end
  
  def new
    @chore = Chore.new params[:chore]
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