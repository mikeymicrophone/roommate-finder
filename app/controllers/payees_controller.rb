class PayeesController < ApplicationController
  def show
    @payee = Payee.find params[:id]
  end
  
  def index
    @payees = Payee.all
  end
  
  def new
    @payee = Payee.new params[:payee]
  end
  
  def create
    @payee = Payee.create params[:payee]
    redirect_to payees_path
  end
  
  def edit
    @payee = Payee.find params[:id]
  end
  
  def update
    @payee = Payee.find params[:id]
    @payee.update_attributes params[:payee]
    redirect_to payees_path
  end
  
  def destroy
    @payee = Payee.find params[:id]
    @payee.destroy
    redirect_to payees_path
  end
end