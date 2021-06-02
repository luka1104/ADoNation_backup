class ApplicationController < ActionController::Base
  before_action :set_current_user
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
        flash[:notice] = "会員登録またはログインが必要です"
        redirect_to("/login")
    end
  end

  def authenticate_user_admin
    if @current_user == nil
        flash[:notice] = "権限がありません"
        redirect_to("/")
    elsif @current_user.admin == false
        flash[:notice] = "権限がありません"
        redirect_to("/")
    end
  end

  def forbid_login_user
    if @current_user
        flash[:notice] = "既にログインしています"
        redirect_to("/")
    end
  end
end
