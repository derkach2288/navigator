class Admin::UsersController < Admin::ApplicationController
    
    def index
        
        @users = User.where(invitation_token: nil)
        authorize @users
    end
end
