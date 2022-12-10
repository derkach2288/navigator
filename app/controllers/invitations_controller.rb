class InvitationsController < Devise::InvitationsController
    before_action :configure_permitted_parameters
    before_action :authenticate_user!

    def new
      authorize User
      super
    end
     protected

  # Permit the new params here.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:invite, keys: [:role])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name])
  end

end