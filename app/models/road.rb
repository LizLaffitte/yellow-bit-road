class Road < ApplicationRecord
    belongs_to :user
    has_many :checkpoints
    has_many :courses, through: :checkpoints

    validates :name, presence: true
    validate :goal_date_cannot_be_in_the_past

  def goal_date_cannot_be_in_the_past
    if goal_date.present? && goal_date < Date.today
      errors.add(:goal_date, "can't be in the past")
    end
  end    

  def courses_attributes=(course_attributes)
    course_attributes.values.each do |course_attribute|
      course = Course.find_or_create_by(course_attribute)
      self.courses << course
    end
  end


end
