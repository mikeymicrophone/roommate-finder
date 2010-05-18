class PaymentsController < ApplicationController
  def show
    @payment = Payment.find params[:id]
  end
  
  def index
    @payments = if params[:month_id]
      Month.find(params[:month_id]).payments
    elsif params[:room_id]
      Room.find(params[:room_id]).payments
    elsif params[:renter_id]
      Renter.find(params[:renter_id]).payments
    elsif params[:unit_id]
      Unit.find(params[:unit_id]).payments
    else
      Payment.all
    end
  end
  
  def new
    @payment = Payment.new params[:payment]
    @payment.renter_id ||= params[:renter_id]
    @payment.room_id ||= params[:room_id]
    @payment.room ||= @payment.renter.andand.room
    @payment.renter ||= @payment.room.andand.renter
    @payment.amount ||= @payment.room.andand.rent
    @payment.month = Month.current
  end
  
  def create
    @payment = Payment.create params[:payment]
    redirect_to payments_path
  end
  
  def edit
    @payment = Payment.find params[:id]
  end
  
  def update
    @payment = Payment.find params[:id]
    @payment.update_attributes params[:payment]
    redirect_to payments_path
  end
  
  def destroy
    @payment = Payment.find params[:id]
    @payment.destroy
    redirect_to payments_path
  end
end