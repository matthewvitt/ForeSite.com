require 'rails_helper'
# testing of controller actions
RSpec.describe UsersController, :type => :controller do
  #render_views

  it "returns the register form in the new view" do

    get :new

    expect(response).to render_template(:new)
  end


  it "assigns a new user" do
    get :new

    expect(assigns(:user)).to be_a_new(User)
  end

  it "creates a  new user" do
    post :create,user: FactoryGirl.attributes_for(:valid_user)

    expect(response).to redirect_to '/teetimes'
  end
  #
  # it "redirects an invalid user" do
  # post :create,user: FactoryGirl.attributes_for(:invalid_user)
  #   expect(response).to redirect_to '/signup'
  # end
end

