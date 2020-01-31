require 'rails_helper'

RSpec.describe Card, type: :model do
  context "model attributes" do 
    
    before(:all) do
      @card = FactoryBot.build(:card) 
    end
    
    it "should have a number" do
      expect(@card.full_number).to be_present
    end

    it "should have a number with exactly 12 numbers" do
      expect(@card.full_number.length).to eq(16)
    end
    
    it "should have a balance in cents" do 
      expect(@card.balance_cents).to be_present
    end
  
  end
end
