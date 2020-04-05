class Checkpoint < ApplicationRecord
    belongs_to :course
    belongs_to :path
end
