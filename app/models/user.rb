class User < ApplicationRecord
    has_many :paths
    has_many :languages, through: :paths
    has_and_belongs_to_many :courses
end
