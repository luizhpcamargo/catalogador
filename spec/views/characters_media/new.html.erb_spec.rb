require 'rails_helper'

RSpec.describe 'characters_media/new', type: :view do
  before(:each) do
    assign(:characters_media, CharactersMedia.new)
  end

  it 'renders new characters_media form' do
    render

    assert_select 'form[action=?][method=?]', 
   	characters_media_index_path, 
   	'post'
  end
end
