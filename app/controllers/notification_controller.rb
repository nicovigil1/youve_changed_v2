class NotificationController < ApplicationController 
    def create
        FriendNotifierMailer.inform(current_user, params[:email]).deliver_now
        flash[:notice] = "Successfully told a friend that they've changed"
        redirect_to root_path
    end 
end 