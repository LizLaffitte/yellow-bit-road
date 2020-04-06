class Path < ApplicationRecord
    belongs_to :user
    has_many :checkpoints
    has_many :courses, through: :checkpoints
end
