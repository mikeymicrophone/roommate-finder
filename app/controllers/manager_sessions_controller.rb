class ManagerSessionsController < ApplicationController
  before_filter :require_no_manager, :only => [:new, :create]
  before_filter :require_manager, :only => :destroy

  def new
    @manager_session = ManagerSession.new
  end

  def create
    @manager_session = ManagerSession.new params[:manager_session]
    if @manager_session.save
      redirect_back_or_default units_path
    elsif @manager = Manager.find_by_email(params[:user_session][:username])
      @manager_session = ManagerSession.new :login => @manager.login, :password => params[:manager_session][:password]
      if @manager_session.save
        redirect_back_or_default units_path
      else
        render :action => :new
      end
    end
  end

  def destroy
    current_manager_session.destroy
    redirect_back_or_default new_manager_session_url
  end  
end
