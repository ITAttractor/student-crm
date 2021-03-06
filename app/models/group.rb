class Group < ActiveRecord::Base
  belongs_to :course
  has_many :group_memberships
  has_many :students, through: :group_memberships
end
