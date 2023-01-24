class ApplicationController < ActionController::Base
    include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


    # layout :choose_layout

    # protected
    #   def choose_layout
    #     if current_user.nil?
    #       'application'
    #     elsif current_user.admin?
    #         'admin'
    #     else
    #       'application'
    #     end
    #   end
 
  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end

  # def authenticate_inviter!
  #   unless current_user.role=="admin"
  #     redirect_to root_url, :alert => "Access Denied"
  #   end
  #   super
  # end
end
