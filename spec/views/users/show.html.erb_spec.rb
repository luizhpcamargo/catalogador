require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before { @user = assign(:user, User.create(login: 'test1', email: 'test1@test.com', 
    	password: 'testtest', password_confirmation: 'testtest')) }

  it 'renders attributes in <p>' do
    render
  end
end
