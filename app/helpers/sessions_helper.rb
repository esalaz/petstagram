module SessionsHelper

  def login(owner)
    session[:owner_id] = owner.id
    @current_owner = owner
  end

  def current_owner
    @current_owner ||= Owner.find_by_id(session[:owner_id])
  end

  def logged_in?
    if current_owner == nil
      redirect_to new_session_path
    end
  end

  def logout
    @current_owner = session[:owner_id] = nil
  end

end
