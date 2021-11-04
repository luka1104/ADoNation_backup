class Donate < ApplicationRecord
    validates :user_id, {presence: true}

    has_rich_text :mainbody
    mount_uploader :donate_image, ImageUploader

    has_many :project_tag, :through => :donate_project_tag
    
    has_many :point_histories
    has_many :donate_points

    #def tag
        #project_tag.map {|project_tag| project_tags.tag }
    #end

    def user
        return User.find_by(id: self.user_id)
    end
end
