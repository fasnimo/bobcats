class UsersController < ApplicationController
    def new
        @user = User.new
    end 

    def create
        @user = User.create(u_params)
        if @user && @user.authenticate(params [:password])
            redirect_to user_path
        else 
            redirect_to root
        end 
    end

    private 

    def u_params
        params.require(:user).permit(:name, :password)
    end 
end
