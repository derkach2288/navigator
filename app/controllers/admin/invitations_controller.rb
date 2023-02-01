class Admin::InvitationsController < Devise::InvitationsController
    before_action :configure_permitted_parameters
    before_action :authenticate_user!
    
layout "admin"



    def new
      authorize User
      super
    end
     protected

  # Permit the new params here.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:invite, keys: [:role])
  end

end