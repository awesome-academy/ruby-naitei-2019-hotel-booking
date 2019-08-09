class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable

  after_create :assign_default_role
  scope :ordered_by_name, ->{order :name}

  def assign_default_role
    self.add_role(:moderator) if self.roles.blank?
  end
end
