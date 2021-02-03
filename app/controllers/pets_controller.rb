class PetsController < ApplicationController
  def show


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
