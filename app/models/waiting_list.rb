class WaitingList < ActiveRecord::Base
  attr_accessible :customer

  belongs_to :customer
  has_many   :waiting_users, :dependent => :destroy
  has_many   :users, :through => :waiting_users

  validates  :customer_id,
    presence: true,
    uniqueness: true
end
