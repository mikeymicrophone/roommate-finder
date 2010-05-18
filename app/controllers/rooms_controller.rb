class RoomsController < ApplicationController
  before_filter :require_manager
  
  def show
    @room = Room.find params[:id]
  end
  
  def new
    params[:room] = {}
    params[:room][:unit_id] = params[:unit_id]
    @room = Room.new params[:room]
  end
  
  def create
    @room = Room.create params[:room]
    redirect_to rooms_path
  end
  
  def index
    @rooms = if params[:unit_id]
      Unit.find(params[:unit_id]).rooms
    elsif params[:month_id]
      Month.find(params[:month_id]).rooms
    else
      Room.all
    end
  end
  
  def edit
    @room = Room.find params[:id]
  end
  
  def update
    @room = Room.find params[:id]
    @room.update_attributes params[:room]
    redirect_to @room
  end
  
  def destroy
    @room = Room.find params[:id]
    @room.destroy
    redirect_to rooms_path
  end
end