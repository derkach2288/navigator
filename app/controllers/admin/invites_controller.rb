class Admin::InvitesController < Admin::AdminController
    
    before_action :authenticate_user!

    def index
        @pending_users = User.where.not(invitation_token: nil)
        authorize @pending_users
    end
end