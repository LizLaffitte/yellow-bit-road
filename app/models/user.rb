class User < ApplicationRecord
    has_many :paths
    has_many :courses, through: :registrations
end
