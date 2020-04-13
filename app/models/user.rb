class User < ApplicationRecord
    has_many :roads, dependent: :destroy
    has_many :checkpoints, dependent: :destroy
    has_many :courses, through: :checkpoints
    has_secure_password
    validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, uniqueness: true, length: {in: 3..20}, presence: true
    
end
