require 'rails_helper'

RSpec.describe Card, type: :model do
  context "model attributes" do 
    
    before(:all) do
      @card = FactoryBot.build(:card) 
    end
    
    it "should have a number" do
      expect(@card.full_number).to be_present
    end
    
    it "should have a balance in cents" do 
      expect(@card.balance_cents).to be_present
    end
  
  end

  context "display attributes" do
  end

  context "validation tests" do 
    
    it "should have a number with exactly 12 numbers" do
      card = FactoryBot.build(:card)
      expect(card.full_number.length).to eq(16)
      expect(card.valid?).to be_truthy

      card.full_number = "000011112222"
      expect(card.valid?).to be_falsey
    end

    it "should not have a negative balance" do 
      card = FactoryBot.build(:card, balance_cents: -100)
      expect(card.valid?).to be_falsey
    end

  end
end
