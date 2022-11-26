class ApplicationController < ActionController::Base
    include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
   
 

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end

  def authenticate_inviter!
    unless current_user.role=="admin"
      redirect_to root_url, :alert => "Access Denied"
    end
    super
  end
end
