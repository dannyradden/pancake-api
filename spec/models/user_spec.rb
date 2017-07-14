require 'rails_helper'

RSpec.describe User do
  context 'validations' do
    it do
      is_expected.to validate_presence_of :username
      is_expected.to validate_presence_of :email
      is_expected.to validate_uniqueness_of(:username).ignoring_case_sensitivity
    end
  end

  context 'attributes' do
    it 'responds to' do
      user = User.new

      expect(user).to respond_to(:username)
      expect(user).to respond_to(:role)
      expect(user).to respond_to(:email)

    end
  end

  context 'relationships' do
    xit "has many projects" do
      user = create(:user)
    end

    xit 'has many comments' do
      user = create(:user)
    end

  end


  context 'enums' do
    let(:user) { build :user }

  end
end
