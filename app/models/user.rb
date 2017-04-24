class User < ApplicationRecord

  has_many :resumes
  has_many :jobs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def admin?
    is_admin
  end
end
