class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :content, {presence: true, length: {maximum: 140}}
end
