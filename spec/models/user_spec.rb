require 'rails_helper'

RSpec.describe User, :type => :model do

    role = Role.first_or_create!(name: 'Admin')
    account_type = AccountType.first_or_create!(name: 'Individual')

    subject {
        described_class.new(
            first_name: "ajsdhjk",
            last_name: "sadh",
            email: "test@gmail.com",
            mobile_number: "788894564",
            role_id: 1,
            account_type_id: 1,
            password_digest: 'ahjsdhj',
            created_at: DateTime.now,
            updated_at: DateTime.now + 1.week
        )
    }

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a first name" do
        subject.first_name = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a last name" do 
        subject.last_name = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a email" do
        subject.email = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a mobile number" do 
        subject.mobile_number = nil
        expect(subject).to_not be_valid
    end
end