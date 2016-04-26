require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have the right attributes' do
    att = subject.attributes
    expect(att).to include 'name'
    expect(att).to include 'login'
    expect(att).to include 'state'
    expect(att).to include 'created_at'
    expect(att).to include 'updated_at'
    expect(att).to include 'email'
    expect(att).to include 'encrypted_password'
    expect(att).to include 'reset_password_token'
    expect(att).to include 'reset_password_sent_at'
    expect(att).to include 'remember_created_at'
    expect(att).to include 'sign_in_count'
    expect(att).to include 'current_sign_in_at'
    expect(att).to include 'last_sign_in_at'
    expect(att).to include 'current_sign_in_ip'
    expect(att).to include 'last_sign_in_ip'
  end

  describe 'checking methods' do
    before do
      @user = FactoryGirl.create(:user)
    end

    it '#to_s' do
      expect(@user.to_s).to eql @user.name
    end

    it 'validations' do
    end
  end
end
