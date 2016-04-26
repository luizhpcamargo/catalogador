require 'rails_helper'

RSpec.describe Media, type: :model do
  it 'should have the right attributes' do
    att = subject.attributes
    expect(att).to include 'title'
    expect(att).to include 'subtitle'
    expect(att).to include 'value'
    expect(att).to include 'description'
    expect(att).to include 'file'
    expect(att).to include 'format'
    expect(att).to include 'size'
    expect(att).to include 'barcode'
    # expect(att).to include 'state'
    # expect(att).to include 'loaned_to'
  end
end
