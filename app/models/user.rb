class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_one :profile, :as => :profilable
  has_many :memberships, :as => :member
  has_many :family_units,
    :through => :memberships,
    :source => :memberable,
    :source_type => 'Customer'

  validates :email, :name, :presence => true
  validates :email, :uniqueness => true
end
