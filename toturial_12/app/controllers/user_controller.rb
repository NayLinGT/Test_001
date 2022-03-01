class UserController < ApplicationController
    def index
        @user= User.new
        @users = User.all
    end
    
    def create_user
        Rails.logger.debug("hello")
        @users = User.new(user_params)
        @users.save
        redirect_to "/"
    end

    def remove_user
        Rails.logger.debug("Remove User function")
    end

    private
    def user_params
        params.require(:user).permit(:id, :name, :address, :phone)
    end
end
