require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @user = assign(:user, User.create(login: 'test', email: 'test@test.com', password: 'testtest', password_confirmation: 'testtest'))
  end

  it 'renders the edit user form' do
    render

    assert_select 'form[action=?][method=?]', user_path(@user), 'post'
  end
end
