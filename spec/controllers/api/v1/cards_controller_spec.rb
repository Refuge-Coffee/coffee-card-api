require "rails_helper"

RSpec.describe Api::V1::CardsController do
  
  # describe "GET index" do
  #   it "assigns @teams" do
  #     get :index
  #     expect(assigns(:teams)).to eq([team])
  #   end

  #   it "renders the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #   end
  # end

  describe "GET #show" do

    before(:all) do 
      @card = FactoryBot.create(:card, full_number: "0101020203030404")
    end

    it "should fetch a card - given a valid card number" do
      get :search, params: { card_number: "0101020203030404"}
      expect(response.content_type).to eq "application/json; charset=utf-8"
      expect(response.status).to eq(200)
    end
    
    it "should not fetch a card - given in invalid number" do 
      get :search, params: { card_number: "0000000000000000"}
      expect(response.content_type).to eq "application/json; charset=utf-8"
      expect(response.status).to eq(404)
    end
    
    it "should not fetch a card - given an incomplete number" do
      get :search, params: { card_number: "010102020303"}
      expect(response.content_type).to eq "application/json; charset=utf-8"
      expect(response.status).to eq(400)
    end
  end
end