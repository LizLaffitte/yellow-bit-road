class Course < ApplicationRecord
    has_many :checkpoints
    has_many :roads, through: :checkpoints
    has_many :users, through: :checkpoints
    validates :name, presence: true, length: {in: 3...100}, uniqueness: true
    validates :language, presence: true, inclusion: {in: %w(CSS HTML Ruby PHP JavaScript Python), message: "is not currently an option. Email an admin to ask for your language to be included" }
    validates :description, length: {maximum: 300}
    validates :difficulty, presence: true, inclusion: { in: %w(Easy Moderate Challenging), message: "%{difficulty} is not a valid difficulty level" }
    
    def self.difficulty_levels
        ['Easy', 'Moderate', 'Challenging']
    end

    def self.language_options
        ['CSS', 'HTML', 'Ruby', 'PHP', 'JavaScript', 'Python']
    end


end
