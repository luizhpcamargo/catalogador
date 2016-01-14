require 'rails_helper'

RSpec.describe 'characters_media/edit', type: :view do
  before(:each) do
    @characters_media = assign(:characters_media, CharactersMedia.create!)
  end

  it 'renders the edit characters_media form' do
    render

    assert_select 'form[action=?][method=?]',
                  characters_media_path(@characters_media), 'post'
  end
end
