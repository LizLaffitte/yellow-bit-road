class Checkpoint < ApplicationRecord
    belongs_to :course
    belongs_to :road
    belongs_to :user

    validate :goal_date_cannot_be_in_the_past

    def goal_date_cannot_be_in_the_past
      if goal_date.present? && goal_date < Date.today
        errors.add(:goal_date, "can't be in the past")
      end
    end    

end
