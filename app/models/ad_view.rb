class AdView < ApplicationRecord
    has_one :point_history
end

#as: :pointable, inverse_of: :pointable