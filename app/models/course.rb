class Course < ApplicationRecord
    has_many :checkpoints, dependent: :destroy
    has_many :roads, through: :checkpoints
    has_many :users, through: :checkpoints
    validates :name, presence: true, length: {in: 3...100}, uniqueness: true
    validates :topic, presence: true, inclusion: {in: ['CSS', 'HTML', 'Ruby', 'PHP', 'JavaScript', 'Python', 'Web Development', 'Cyber Security', 'Web Design', 'Java', 'iOS', 'Android', 'C#', 'SQL'], message: "is not currently an option. Email an admin to ask for your topic to be included" }
    validates :description, presence:true, length: {maximum: 300}
    validates :difficulty, presence: true, inclusion: { in: %w(Easy Moderate Challenging), message: "is not a valid difficulty level" }
    
    def self.difficulty_levels
        ['Easy', 'Moderate', 'Challenging']
    end

    def self.topic_options
        ['CSS', 'HTML', 'Ruby', 'PHP', 'JavaScript', 'Python', 'Web Development', 'Cyber Security', 'Web Design', 'Java', 'iOS', 'Android', 'C#', 'SQL'].sort
    end

    def self.available_topics
        @topics = Course.distinct.pluck(:topic)
        @topics << "Any Topic"
        @topics.sort
    end

    def self.available_difficulties
        Course.distinct.pluck(:difficulty).sort
    end
  
end
