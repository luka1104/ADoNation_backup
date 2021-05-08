class HomeController < ApplicationController
  def index
    @projects = Project.all.order(created_at: :desc)
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

  def show
    @project = Project.find_by(id: params[:id])
  end

  def new
  end

  def create
    @project = Project.new(content: params[:content])
    @project.save
    redirect_to("/")
  end
end
