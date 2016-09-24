class User < ApplicationRecord
  has_many :company_profiles
  has_one :student_profile
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :job_listings
  has_many :job_applications
  has_many :job_listings, through: :job_applications

  rolify :role_cname => 'Roles'

  after_create :assign_role

  def assign_role
      unless user_type.nil?
        if user_type == 'company'
          add_role :company_rep
        elsif user_type == 'student'
          add_role :student
        end
      end
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
