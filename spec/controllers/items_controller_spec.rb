require 'spec_helper'

describe ItemsController do

  describe 'GET show' do
    it "should redirect to item_controller#index" do
      get :show, {id: 5}
      response.should redirect_to items_path
    end
  end
  
end