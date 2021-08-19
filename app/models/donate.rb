class Donate < ApplicationRecord
    has_rich_text :mainbody
    mount_uploader :donate_image, ImageUploader
    
    has_many :project_tag, :through => :donate_project_tag
    def tag
        project_tag.map {|project_tag| project_tags.tag }
    end
end
