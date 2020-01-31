class Api::V1::CardsController < ApplicationController
  def search
    card = Card.where(full_number: params[:card_number])
    if card.present?
      render json: CardBlueprint.render(card, view: :normal)
    else
      render json: {}, status: 404
    end
  end
end
