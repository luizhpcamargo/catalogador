require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before { @user = assign(:user, User.create!) }

  it 'renders attributes in <p>' do
    render
  end
end
