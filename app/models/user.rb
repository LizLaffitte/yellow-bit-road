class User < ApplicationRecord
    has_many :paths, dependent: :destroy
    has_many :checkpoints
    has_many :courses, through: :checkpoints
    has_secure_password
    validates :email, uniqueness: true
    validates :username, uniqueness: true, length: {in: 6..20}
end
