module SessionsHelper

  def login(owner)
    session[:owner_id] = owner.id
    @current_owner = owner
  end
end
