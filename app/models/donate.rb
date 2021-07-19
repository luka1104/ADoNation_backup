class Donate < ApplicationRecord
    validates :title, {presence: true}
    validates :donate_image, {presence: true}
    validates :body, {presence: true}
end
