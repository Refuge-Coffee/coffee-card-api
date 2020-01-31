require 'rails_helper'

RSpec.describe Event, type: :model do
  context "model attributes" do 
    before(:all) do 
      @event = FactoryBot.build(:event, description: nil)
    end
    
    it "should have an action" do 
      expect(@event.action).to be_present
    end
    
    it "is valid without a description" do
      expect(@event.valid?).to be_truthy
    end
    
    it "should have an amount" do
      expect(@event.amount_cents).to be_present
    end
    
    it "should belong to a card" do
      expect(@event.card).to be_present
    end
  end
end
