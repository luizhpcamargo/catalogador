require 'rails_helper'

RSpec.describe 'characters_media/index', type: :view do
  before(:each) do
    assign(:characters_media, [
      CharactersMedia.create!,
      CharactersMedia.create!
    ])
  end

  it 'renders a list of characters_media' do
    render
  end
end
