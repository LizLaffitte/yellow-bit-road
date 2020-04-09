class User < ApplicationRecord
    has_many :roads
    has_many :checkpoints
    has_many :courses, through: :checkpoints
    has_secure_password
    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, length: {in: 6..20}, presence: true
    
end
