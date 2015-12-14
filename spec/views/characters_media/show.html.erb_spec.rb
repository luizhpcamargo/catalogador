require 'rails_helper'

RSpec.describe 'characters_media/show', type: :view do
  before(:each) do
    @characters_media = assign(:characters_media, CharactersMedia.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
