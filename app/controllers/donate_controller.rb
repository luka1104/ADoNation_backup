class DonateController < ApplicationController
  before_action :authenticate_user_admin,{only:[:raisedonate_admin]}

  def index
  end

  def index_admin
    @donates = Donate.all.order(created_at: :desc)
  end

  def raisedonate_admin
    @donate = Donate.find_by(id: params[:id])
  end

  def new
    @donate = Donate.new
  end

  def donate_show
    @donate = Donate.find_by(id: params[:id])
  end
  
  def create
    @donate = Donate.new(
      title: params[:title],
      donate_image: "default_donate.jpg",
      body: params[:body]
  )
    if @donate.save
      session[:donate_id] = @donate.id
      flash[:notice] = "投稿を完了しました"
      redirect_to("/donate/index")
    else
      @donate.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("/donate/raisedonate_admin")
    end
  end

  def edit
    @donate = Donate.find_by(id: params[:id])
  end

  def outline
    @donate = Donate.find_by(id: params[:id])
  end

  def mainbody
    @donate = Donate.find_by(id: params[:id])
  end

  def other
    @donate = Donate.find_by(id: params[:id])
  end

  def perk
    @donate = Donate.find_by(id: params[:id])
  end

  def visual
    @donate = Donate.find_by(id: params[:id])
  end

  def certification
    @donate = Donate.find_by(id: params[:id])
  end

  def donate_params
    params.require(:donate).permit(:mainbody, :content)
  end

  def update
    @donate = Donate.find_by(id: params[:id])
    @donate.title = params[:title]
    @donate.body = params[:body]
    if params[:donate_image]
      image = params[:donate_image]
      @donate.donate_image = "donate_image.#{@donate.id}.jpg"
      File.binwrite("public/donate_images/#{@donate.donate_image}", image.read)
    end
    if @donate.save
      flash[:notice] = "編集内容が送信されました"
      redirect_to("/donate/#{@donate.id}")
    else
      @donate.errors.full_messages.each do |message|
        flash[:notice] = "#{message}"
      end
      render("donate/donate_show")
    end
  end

  def destroy
    @donate = Donate.find_by(id: params[:id])
    @donate.destroy
    flash[:notice] = "アカウントを削除しました"
    redirect_to("/")
  end
end
