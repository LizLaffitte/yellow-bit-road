class Road < ApplicationRecord
    belongs_to :user
    has_many :checkpoints, dependent: :destroy
    has_many :courses, through: :checkpoints
    accepts_nested_attributes_for :checkpoints, reject_if: proc { |attributes| attributes['course_id'].blank? }

    validates :name, presence: true, uniqueness: {scope: [ :user_id]}
    validate :goal_date_cannot_be_in_the_past

  def goal_date_cannot_be_in_the_past
    if goal_date.present? && goal_date < Date.today
      errors.add(:goal_date, "can't be in the past")
    end
  end    

  def not_courses
    Course.where.not(id: self.course_ids)
  end

  def course_topics
    courses.distinct.pluck(:topic)
  end

  def next_step
     checkpoints.order(:goal_date).find_by(completed: false).course.name
  end

end
