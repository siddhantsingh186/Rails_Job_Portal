class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :applications
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :phone, presence: true
  validates :work_experience, presence: true
  validates :education, presence: true
  validates :resume_link, presence: true
  validates :address_line_1, presence: true
  validates :city, presence: true
end
