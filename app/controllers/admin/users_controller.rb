class Admin::UsersController < ApplicationController
    
    before_action :authenticate_user!

    def index
        
        @users = User.where(invitation_token: nil)
        authorize @users
    end
end
