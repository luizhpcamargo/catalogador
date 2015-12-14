require 'rails_helper'

RSpec.describe Character, type: :model do
  it 'should have the right attributes' do
    att = subject.attributes
    expect(att).to include 'name'
    expect(att).to include 'birth'
    expect(att).to include 'codename'
    expect(att).to include 'role'
    expect(att).to include 'type'
    expect(att).to include 'description'
  end
end
