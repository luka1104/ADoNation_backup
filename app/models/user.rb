class User < ApplicationRecord
    has_secure_password

    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}

    has_many :point_histories
    has_many :user_points

    def posts
        return Post.where(user_id: self.id)
    end

    def donates
        return Donate.where(user_id: self.id)
    end
end