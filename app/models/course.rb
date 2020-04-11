class Course < ApplicationRecord
    has_many :checkpoints
    has_many :roads, through: :checkpoints
    has_many :users, through: :checkpoints
    validates :name, presence: true, length: {in: 3...100}, uniqueness: true
    validates :description, length: {maximum: 300}
    validates :difficulty, inclusion: { in: %w(easy moderate challenging), message: "%{difficulty} is not a valid difficulty level" }
    

end
