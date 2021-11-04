class ProjectTagsController < ApplicationController
    def index
        @project_tags = ProjectTag.all
    end

    def new
        @project_tag = ProjectTag.new
    end

    def create
        @project_tag = ProjectTag.new(
            tag: params[:tag]
        )
        if @project_tag.save
            session[:project_tag_id] = @project_tag.id
            flash[:notice] = "投稿を完了しました"
            redirect_to("/projecttag/new")
        else
            @project_tag.errors.full_messages.each do |message|
            flash[:notice] = "#{message}"
        end
    end

end

end