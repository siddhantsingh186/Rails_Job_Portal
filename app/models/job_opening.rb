class JobOpening < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :company_name, presence: true
  validates :salary, presence: true, numericality: { greater_than: 0 }
  validates :location, presence: true
  validates :experience_years, presence: true, numericality: { greater_than_or_equal_to: 0 }
    
end
