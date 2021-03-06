require 'rails_helper'

RSpec.describe User, type: :model do
  subject {described_class.new(first_name: 'Mario', last_name: 'Hamameh', email: 'mariohamameh97@gmail.com', password: "1234", password_confirmation: "1234")}

  describe 'Validations' do
    
    it 'saves successfully when all four feilds are set' do
      subject.valid?
      expect(subject.errors).to be_empty
    end

    it 'fails to save when email is not set' do
      subject.email = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'fails to save when first name is not set' do
      subject.first_name = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'fails to save when last name is not set' do
      subject.last_name = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'fails to save when password is not set' do
      subject.password = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'fails to save when password_confirmation is not set' do
      subject.password_confirmation = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'fails to save when password and password_confirmation does not match' do
      subject.password_confirmation = '0000'
      subject.valid?
      expect(subject.errors).not_to be_empty
    end
    
    it 'fails to save when email is not unique (not case sensitive)' do
      User.create(:first_name => 'Mario', :last_name => 'Hamameh', :email => 'mariohamameh97@gamil.com', :password => "1234", :password_confirmation => "1234", :password_digest => "123")
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'fails to save when password and password_confirmation is less than length 3' do
      subject.password = '00'
      subject.password_confirmation = '00'
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    describe '.authenticate_with_credentials' do
      it 'returns user if succesfully authenticated' do
        subject.save
        user = User.authenticate_with_credentials('mariohamameh97@gmail.com', '1234')
        expect(subject).to be == user
      end

      it 'returns nil if not successfully authenticated' do
        subject.save
        user = User.authenticate_with_credentials('mariohamameh97@gmail.com', 'abc')
        expect(user).to be == nil
      end

      it 'authenticates and users if user type white space before / after email' do
        subject.save
        user = User.authenticate_with_credentials(' mariohamameh97@gmail.com ', '1234')
        expect(subject).to be == user
      end

      it 'authenticates and users if users type lower and upper case in email' do
        subject.save
        user = User.authenticate_with_credentials('maRioHamameh97@gmAil.com', '1234')
        expect(subject).to be == user
      end
    end
    
  end
end