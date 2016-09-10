class Skill < ApplicationRecord
  belongs_to :skill_catagory
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :job_listing_skils
  has_many :job_listings, through: :job_listing_skils
end
