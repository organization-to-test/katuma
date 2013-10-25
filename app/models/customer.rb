class Customer < ActiveRecord::Base
  attr_accessible :name

  has_one  :profile, :as => :profilable
  has_many :members, :as => :memberable, :class_name => 'Membership'
  has_many :memberables, :as => :member, :class_name => 'Membership'
  has_many :customers,
    :through => :members,
    :source => :member,
    :source_type => 'Customer'
  has_many :users,
    :through => :members,
    :source => :member,
    :source_type => 'User'
  has_many :orders
  has_many :petitions, :as => :provider, :class_name => 'Order'

  validates :name, :presence => true
end
