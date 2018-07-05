class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :show, :destroy, :update ]
    
    def new
        @user = User.new
    end
    
    def create
        
        @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
        @user.ceo = 0
        if @user.save
            redirect_to user_url(@user)
        else
            
        end
    end
    
    def show
    end
    
    def index
        @users = User.all
    end
    
    def edit
        
    end
    
    def update
        @user = User.update(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    end
    
    def destroy
    end
    
    def set_user
        @user = User.find params[:id]
    end
    
end
