class Course < ApplicationRecord
    belongs_to :language
    has_and_belongs_to_many :paths
    has_and_belongs_to_many :users
end
