require 'rails_helper'

RSpec.describe TeetimesController, :type => :controller do
  #render_views

  before do
    allow(controller).to receive(:authorize).and_return(FactoryGirl.build(:valid_user))
  end


  # it "new destroys a new teetime" do
  #
  #   delete  :destroy, id:  User.create(email: "test@test.com",password:"password",password_confirmation: "password").id
  #   expect(response).to redirect_to(teetimes_path)
  # end

  it "updates a teetime" do
    put :updates_teetime
    expect(response).to redirect_to(teetimes_path)
  end
end