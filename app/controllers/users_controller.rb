class UsersController < ApplicationController
  before_action :authenticate_user,{only:[:index, :show, :edit, :update]}

  before_action :forbid_login_user,{only:[:new, :create, :login_form, :login]}

  before_action :ensure_correct_user, {only: [:edit, :update]}

  def index
    @users = User.all
    render :layout => 'community'
  end

  def show
    @user = User.find_by(id: params[:id])
    render :layout => 'community'
  end

  def show2
    @user = User.find_by(id: params[:id])
  end

  def show3
    @user = User.find_by(id: params[:id])
    render :layout => 'ai_d'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user.jpg",
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "登録を完了しました"
      redirect_to("/users/#{@user.id}")
    else
      @user.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if params[:image]
      image = params[:image]
      @user.image_name = "user_image.#{@user.id}.jpg"
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end
    if @user.save
      flash[:notice] = "編集内容が送信されました"
      redirect_to("/users/#{@user.id}")
    else
      @user.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("users/edit")
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice] = "アカウントを削除しました"
    redirect_to("/signup")
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      flash[:notice] = "ログインしました"
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}")
    else
      flash[:notice] = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
    render :layout => 'community'
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

end
