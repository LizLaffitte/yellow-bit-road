class User < ApplicationRecord
    has_many :paths
    has_many :checkpoints
    has_many :courses, through: :checkpoints
    
end
