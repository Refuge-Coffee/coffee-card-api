class Api::V1::CardsController < ApplicationController
  def search
    card = Card.where(full_number: params[:card_number])
    if card.present?
      render json: CardBlueprint.render(card, view: :normal)
    elsif params[:card_number].length == 16
      render json: {}, status: 404
    else
      render json: {}, status: 400
    end
  end
end
