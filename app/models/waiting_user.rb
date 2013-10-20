class WaitingUser < ActiveRecord::Base
  attr_accessible :user_id, :waiting_list_id

  belongs_to :user
  belongs_to :waiting_list

  validates :waiting_list_id, presence: true
  validates :user_id,
    presence: true,
    uniqueness: {
      scope: :waiting_list_id,
      message: "already exists"
    }
end
