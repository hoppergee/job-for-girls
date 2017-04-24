class User < ApplicationRecord

  has_many :resumes
  has_many :jobs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  mount_uploader :head_icon, HeadIconUploader
  mount_uploader :company_image, CompanyImageUploader
  mount_uploader :brief_video, BriefVideoUploader
         
  def admin?
    is_admin
  end
  
  def company?
    is_company
  end
end
