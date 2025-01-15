class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  belongs_to :plan, optional: true
  has_many :consultant_requests
  has_many :consultations, foreign_key: :user_id
  has_many :consultations_as_consultant, class_name: 'Consultation', foreign_key: :consultant_id

  after_create :assign_default_role_plan

  def request_consultant!
    consultant_requests.create!
  end

  def approve_consultant!
    add_role(:consultant)
  end

  private

  def assign_default_role_plan
    self.add_role(:free_user) if roles.blank?
    self.update(plan: Plan.find_by(name: 'Free'))
  end

end
