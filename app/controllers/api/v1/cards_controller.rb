class Api::V1::CardsController < ApplicationController
  def search
    params = request_body_params

    card = Card.find_by(full_number: params[:card_number])
    if card.present?
      render json: CardBlueprint.render(card, view: :normal)
    elsif params[:card_number].length == 16
      render json: {}, status: 404
    else
      render json: {}, status: 400
    end
  end

private 

  def request_body_params
    body = request.body.read
    JSON.parse(body).symbolize_keys
  end
end
