class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  belongs_to :plan, optional: true

  after_create :assign_default_role_plan

  private

  def assign_default_role_plan
    self.add_role(:free_user) if roles.blank?
    self.update(plan: Plan.find_by(name: 'Free'))
  end

end
