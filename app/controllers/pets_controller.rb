class PetsController < ApplicationController
  def show

    pet = Pet.find params[:id]
    render json: pet, include: [:shelter]

  end # show

  def index

    pets = Pet.all
    render json: pets

  end # index

  def edit
  end

  def create
  end
end
