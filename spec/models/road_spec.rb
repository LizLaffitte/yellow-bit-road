require 'rails_helper'


RSpec.describe Road, :type => :model do
    testUser = User.find_by(username: "Bob")
    subject {described_class.new(
                name: "CSS Master", 
                public: true, 
                goal_date: "2021-12-30", 
                user_id: testUser.id)
            }
        
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a public value" do
        subject.public = nil
        expect(subject).to_not be_valid
    end

    # it "is not valid without a difficulty" do
    #     subject.difficulty = nil
    #     expect(subject).to_not be_valid
    # end

    # it "is not valid without a valid difficulty" do
    #     subject.difficulty = "Easy Enough"
    #     expect(subject).to_not be_valid
    # end
  
end

