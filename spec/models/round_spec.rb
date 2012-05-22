require 'spec_helper'

describe Round do
  it "has a valid factory" do
    Factory.create(:round).should be_valid
  end
  
  it "is invalid without a score" do
    Factory.build(:round, score: nil).should_not be_valid
  end
  
  it "is invalid if score has letters" do
    Factory.build(:round, score: "hi").should_not be_valid
  end
  
  it "is invalid without a date" do
    Factory.build(:round, date_played: nil).should_not be_valid
  end

end
