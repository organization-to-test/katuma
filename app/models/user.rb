class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_one  :profile, :as => :profilable
  has_many :memberships, :as => :member
  has_many :waiting_users, :dependent => :destroy
  has_many :waiting_lists, :through => :waiting_users

  validates :name, presence: true
  validates :email,
    presence: true,
    uniqueness: true
end
