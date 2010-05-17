module AuthlogicControllerDispatch
  private
  def current_manager_session
    return @current_manager_session if defined?(@current_manager_session)
    @current_manager_session = ManagerSession.find
  end
  
  def current_manager
    return @current_manager if defined?(@current_manager)
    @current_manager = current_manager_session && current_manager_session.record
  end
  
  def require_manager
    unless current_manager
      store_location
      flash[:notice] = "log in to access."
      redirect_to new_manager_session_url
      return false
    end
  end

  def require_no_manager
    if current_manager
      store_location
      flash[:notice] = "you must be logged out to access that."
      redirect_to units_path
      return false
    end
  end
  
  def store_location
    session[:return_to] = request.request_uri
  end
  
  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end