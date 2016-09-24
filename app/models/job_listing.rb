class JobListing < ApplicationRecord
  belongs_to :user
  belongs_to :company_profile
  has_many :job_listing_skils
  has_many :skills, through: :job_listing_skils
  has_many :job_applications
  has_many :user, through: :job_applications
end
