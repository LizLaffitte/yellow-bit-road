class Course < ApplicationRecord
    has_many :checkpoints
    has_many :roads, through: :checkpoints
    has_many :users, through: :checkpoints
    validates :name, presence: true, length: {in: 3...100}, uniqueness: true
    validates :language, presence: true, inclusion: {in: %w(CSS HTML RUBY PHP JavaScript Python), message: "%{language} is not currently an option. Email an admin to ask for your language to be included" }
    validates :description, length: {maximum: 300}
    validates :difficulty, presence: true, inclusion: { in: %w(easy moderate challenging), message: "%{difficulty} is not a valid difficulty level" }
    
    def self.difficulty_levels
        [['Easy', 'easy'], ['Moderate', 'moderate'], ['Challenging', 'challenging']]
    end

    def self.language_options
        ['CSS', 'HTML', 'Ruby', 'PHP', 'JavaScript', 'Python']
    end


end
