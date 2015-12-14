require 'rails_helper'

RSpec.describe CharactersMedia, type: :model do
  it 'should have the right attributes' do
    att = subject.attributes
    expect(att).to include 'media_id'
    expect(att).to include 'character_id'
    expect(att).to include 'character_role_id'
  end
end
