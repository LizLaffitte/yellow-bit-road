class Checkpoint < ApplicationRecord
    belongs_to :course
    belongs_to :road
    belongs_to :user
end
