class StaticController < ApplicationController
  def index
    render :template => 'static/index'
  end
end