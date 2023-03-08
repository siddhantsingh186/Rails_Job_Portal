class JobOpening < ApplicationRecord
  has_many :applicants
  validates :title, presence: true , length: { minimum: 5}
  validates :description, presence: true , length: { minimum: 10}
  validates :latitude, presence: true
  validates :longitude, presence: true

end
