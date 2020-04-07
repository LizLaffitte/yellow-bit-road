class Language < ApplicationRecord
    has_many :courses
    has_many :paths, through: :courses
end
