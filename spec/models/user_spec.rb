require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'expects to have a full name' do
      subject.full_name = ''
      expect(subject).to_not be_valid
    end
  end
end
