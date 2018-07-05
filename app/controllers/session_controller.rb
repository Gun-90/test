class SessionController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_url(user)
      # 로그인한 유저를 어딘가로 redirect 시킨다
    else
      flash[:danger] = 'email / password 가 일치하지 않습니다'
      render 'new'  
    end
  end

  def destroy
    
  end


end
