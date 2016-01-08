require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
      User.create(login: 'test1', email: 'test1@test.com', 
    	password: 'testtest', password_confirmation: 'testtest'),
      User.create(login: 'test2', email: 'test2@test.com', 
    	password: 'testtest', password_confirmation: 'testtest')
    ])
  end

  it 'renders a list of users' do
    render
  end
end
