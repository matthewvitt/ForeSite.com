require 'rails_helper'
# login tests
RSpec.describe "Login", :type => :feature do
  describe "loggin a user in" do
    it "logs in a user and redirects to users path" do
      FactoryGirl.create(:valid_user)

      visit login_path
      fill_in "email", with: "integration@integration.com"
      fill_in "password", with: "password"


      click_on "Submit"
      expect(current_path).to eq(login_path)
    end
  end

  # describe "click Make a teetime" do
  #   it "redirects to teetime create page" do
  #
  #     click_on "Make a teetime"
  #     expect(login_path).to eq(teetimes/new_path)
  #
  #   end
  # end
end
