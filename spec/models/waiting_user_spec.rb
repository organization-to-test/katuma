# spec/models/waiting_user_spec.rb
require 'spec_helper'

describe WaitingUser do

  describe "Validations" do
    it "has valid factory" do
      expect(FactoryGirl.build(:waiting_user)).to be_valid
    end
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:waiting_list_id) }
    it { FactoryGirl.create(:waiting_user)
         should validate_uniqueness_of(:user_id).scoped_to(:waiting_list_id).with_message("already exists") }
  end

  describe "Associations" do
    it { should belong_to(:user) }
    it { should belong_to(:waiting_list) }
  end

end
