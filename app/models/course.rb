class Course < ApplicationRecord
    has_many :checkpoints
    has_many :roads, through: :checkpoints
    has_many :users, through: :checkpoints
    validates :name, presence: true, length: {in: 3...100}, uniqueness: true
    validates :description, length: {maximum: 300}
    validates :difficulty, inclusion: { in: %w(easy moderate challenging), message: "%{difficulty} is not a valid difficulty level" }
    validate :goal_date_cannot_be_in_the_past

    def goal_date_cannot_be_in_the_past
      if goal_date.present? && goal_date < Date.today
        errors.add(:goal_date, "can't be in the past")
      end
    end    

end
