class Application < ApplicationRecord
  belongs_to :job_opening
  belongs_to :applicant
end
