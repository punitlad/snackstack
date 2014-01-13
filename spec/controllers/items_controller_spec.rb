require 'spec_helper'

describe ItemsController do

  describe 'GET index' do
    # it 'authenticates a user' do
    #   expect(controller).to receive(:authenticate_user!)
    #   get :index
    # end

    it 'requires a signed in user' do
      get :index
      response.should redirect_to new_user_session_path
    end
  end

  describe 'GET show' do
    it "should redirect to item_controller#index" do
      sign_in create :user
      get :show, {id: 5}
      response.should redirect_to items_path
    end
  end
  
end