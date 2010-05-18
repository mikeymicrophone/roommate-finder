class BillsController < ApplicationController
  def show
    @bill = Bill.find params[:id]
  end
  
  def index
    @bills = Bill.all
  end
  
  def new
    @bill = Bill.new params[:bill]
  end
  
  def create
    @bill = Bill.create params[:bill]
    redirect_to bills_path
  end
  
  def edit
    @bill = Bill.find params[:id]
  end
  
  def update
    @bill = Bill.find params[:id]
    @bill.update_attributes params[:bill]
    redirect_to bills_path
  end
  
  def destroy
    @bill = Bill.find params[:id]
    @bill.destroy
    redirect_to bills_path
  end
end