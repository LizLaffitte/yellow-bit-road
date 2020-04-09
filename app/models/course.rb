class Course < ApplicationRecord
    has_many :checkpoints
    has_many :roads, through: :checkpoints
    has_many :users, through: :checkpoints
end
