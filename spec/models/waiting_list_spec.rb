# spec/models/waiting_list_spec.rb
require 'spec_helper'

describe WaitingList do

  describe "Validations" do
    it "has valid factory" do
      expect(FactoryGirl.build(:waiting_list)).to be_valid
    end
    it { should validate_presence_of(:customer_id) }
    it { should validate_uniqueness_of(:customer_id) }
  end

  describe "Associations" do
    it { should belong_to(:customer) }
    it { should have_many(:waiting_users).dependent(:destroy) }
    it { should have_many(:users).through(:waiting_users) }
  end

end
