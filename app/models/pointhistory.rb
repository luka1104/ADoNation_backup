class Pointhistory < ApplicationRecord
    has_many :point_breakdowns
    has_many :donate_points, through: :point_breakdowns

    belongs_to :donate
    belongs_to :pointable
end
