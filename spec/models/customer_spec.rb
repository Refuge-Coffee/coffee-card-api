require 'rails_helper'

RSpec.describe Customer, type: :model do
  context "model attributes" do 
    before(:all) do 
      @customer = FactoryBot.build(:customer)
    end
    
    it "should have a first name" do
      expect(@customer.first_name).to be_present
    end
    it "should have a last name" do
      expect(@customer.last_name).to be_present
    end
  end
end
