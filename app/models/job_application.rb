class JobApplication < ApplicationRecord
  belongs_to :job_opening
  belongs_to :applicant

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true
  validates :phone, presence: true
  validates :resume_link, presence: true
  validates :work_experience, presence: true
  validates :education, presence: true
  validates :address_line_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true 

  enum status: [:pending, :accepted, :rejected]
end