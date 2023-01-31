class InvitationsController < Devise::InvitationsController
    before_action :configure_permitted_parameters
    before_action :authenticate_user!
    
#  layout :set_layout


    def new
    redirect_to admin_invitation_path and return
    super
    end
     protected

  # Permit the new params here.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :company_id])
  end

  # def set_layout
  #   if current_user.nil?
  #     'application'
  #   elsif current_user.admin?
  #       'admin'
  #   else
  #     'application'
  #   end
  # end
 
end