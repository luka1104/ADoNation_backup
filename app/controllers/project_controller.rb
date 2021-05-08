class ProjectController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
  end
end
