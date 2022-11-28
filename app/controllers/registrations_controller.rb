class RegistrationsController < Devise::RegistrationsController

  def new
    redirect_to new_user_session_path and return
    super
  end

    protected
  

    def after_sign_up_path_for(resource)
      root_path # Or :prefix_to_your_route
    end
  end