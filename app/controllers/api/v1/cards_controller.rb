class Api::V1::CardsController < ApplicationController
  def index
    cards = Card.all.order(created_at: :desc)
    render json: cards
  end

  def create
    card = Card.create(card_params)
        if @customer.valid?
          render json: card, status: :created
        else
          render json: {'code': 205, 'message': 'Record cannot be created'}, status: :unprocessable_entity
        end
  end

  def show
  end

  def destroy
  end

  private

      def card_params
        params.permit(:id, :name, :idList)
      end
end
