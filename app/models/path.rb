class Path < ApplicationRecord
    belongs_to :user
    has_many :courses, through: :checkpoints
end
