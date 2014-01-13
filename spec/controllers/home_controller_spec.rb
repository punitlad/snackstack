require 'spec_helper'

describe HomeController do
  it 'should redirect user to Items page if signed in' do
    sign_in create :user
    get :index
    response.should redirect_to items_path
  end 

  it 'does not redirect if user is not signed in' do
    get :index
    response.should render_template 'index'
  end
end
