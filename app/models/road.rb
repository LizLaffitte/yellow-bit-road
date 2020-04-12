class Road < ApplicationRecord
    belongs_to :user
    has_many :checkpoints, dependent: :destroy
    has_many :courses, through: :checkpoints
    accepts_nested_attributes_for :checkpoints

    validates :name, presence: true
    validate :goal_date_cannot_be_in_the_past

  def goal_date_cannot_be_in_the_past
    if goal_date.present? && goal_date < Date.today
      errors.add(:goal_date, "can't be in the past")
    end
  end    

  def not_courses
    Course.where.not(id: self.course_ids)
  end

end
