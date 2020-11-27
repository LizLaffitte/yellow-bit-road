require 'rails_helper'


RSpec.describe Course, :type => :model do
    subject {described_class.new(
                name: "Python Basics", 
                description: "Learn the building blocks of the wonderful general purpose programming language Python.", 
                difficulty: "Easy", 
                topic:"Python")
            }
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a description" do
        subject.description = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a difficulty" do
        subject.difficulty = nil
        expect(subject).to_not be_valid
    end

    it "is not valid without a valid difficulty" do
        subject.difficulty = "Easy Enough"
        expect(subject).to_not be_valid
    end
  
end

