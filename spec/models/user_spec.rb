require 'rails_helper'
# model tests
RSpec.describe User, :type => :model do

  context "email" do


    it "must be present" do
      expect(FactoryGirl.build(:null_email).save).to be false
    end

    it "must be valid" do
      expect(FactoryGirl.build(:valid_user).save).to be true
    end


    it "must be shorter than 50 characters" do
      expect(FactoryGirl.create(:long_email).save).to be true
    end

    it "must be unique" do
      user1= FactoryGirl.create(:valid_user)
      user2= FactoryGirl.build(:valid_user)

      expect(user2.save).to be false
    end
  end

  context "password" do
    it "must have 7 characters" do
      expect(FactoryGirl.build(:base_password).save).to be false

    end

    it "must be less than 20 characters" do
      expect(FactoryGirl.build(:long_password).save). to be false
    end

    it "must pass confirmation" do
      expect(FactoryGirl.build(:password_confirmation).save). to be false
    end


  end



  # pending "add some examples to (or delete) #{__FILE__}"
end
