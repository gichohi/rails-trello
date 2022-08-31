class Api::V1::ListsController < ApplicationController
  def index
    lists = List.all.order(created_at: :desc)
    render json: lists
  end

  def create
    list = List.create(list_params)
    if list.valid?
      render json: list, status: :created
    else
      render json: { 'code': 205, 'message': 'Record cannot be created' }, status: :unprocessable_entity
    end
  end

  def show
    if list
      render json: list
    else
      render json: list.errors
    end
  end

  def destroy
    list&.destroy
    render json: { message: 'List Deleted'}
  end

  private

  def list_params
    params.permit(:id, :name)
  end

  def list
    @list ||= List.find(params[:id])
  end

end
