class Api::V1::CardsController < ApplicationController
  def index
    cards = Card.all.order(created_at: :desc)
    render json: cards
  end

  def create
    card = Card.create(card_params)
    if card.valid?
      render json: card, status: :created
    else
      render json: { 'code': 205, 'message': 'Record cannot be created' }, status: :unprocessable_entity
    end
  end

  def show
    if card
      render json: card
    else
      render json: card.errors
    end
  end

  def destroy
    card&.destroy
    render json: { message: 'Card Deleted'}
  end

  private

  def card_params
    params.permit(:id, :name, :idCard)
  end

  def card
    @card ||= Card.find(params[:id])
  end
end
