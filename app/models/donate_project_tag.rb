class DonateProjectTag < ApplicationRecord
    belongs_to :donate
    belongs_to :project_tag
end
