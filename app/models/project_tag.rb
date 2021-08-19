class ProjectTag < ApplicationRecord
    validates :tag, {presence: true, uniqueness: true}

    has_many :donate, :through => :donate_project_tag
end
