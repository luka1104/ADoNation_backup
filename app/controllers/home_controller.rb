class HomeController < ApplicationController
  before_action :authenticate_user,{only:[:choose_ad]}
  before_action :authenticate_user_admin,{only:[:raisedonateadmin]}

  def index
  end
  
  def first
  end
  
  def aboutus
  end
  
  def choose_ad
  end
  
  def contact
  end
  
  def login
  end
  
  def newproject
  end
  
  def recruitment
  end
  
  def signup
  end
  
  def projects
  end

  def raisedonate
  end

  def raisedonateadmin
  end

  def show
    @project = Project.find_by(id: params[:id])
  end

  def new
  end

  def create
    @project = Project.new(content: params[:content])
    if @project.save
      flash[:notice] = "投稿を完了しました"
      redirect_to("/community")
    else
      @project.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("home/community")
    end
  end

  def edit
    @project = Project.find_by(id: params[:id])
  end

  def update
    @project = Project.find_by(id: params[:id])
    @project.content = params[:content]
    if @project.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/community")
    else
      @project.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("home/edit")
    end
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    @project.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/community")
  end
end
