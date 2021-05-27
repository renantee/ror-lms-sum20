class User < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments

  def full_name
    "#{first_name} #{last_name}"
  end
end
