class Admin::InvitesController < Admin::ApplicationController
    

    def index
        @pending_users = User.where.not(invitation_token: nil)
        authorize @pending_users
    end
end