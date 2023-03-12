class JobOpening < ApplicationRecord
  has_many  :applications
  validates :title, presence: true , length: {minimum: 5, maximum: 35}
  validates :description, presence: true, length: { minimum: 10 }
  validates :company_name, presence: true, length: { minimum: 3, maximum: 30}
  validates :salary, presence: true, numericality: { greater_than: 0 }
  validates :location, presence: true
  validates :experience_years, presence: true, numericality: { greater_than_or_equal_to: 0 } 
end
