class SheltersController < ApplicationController

  def index
    shelter = Shelter.all
    render json: shelter
  end

  def show
    shelters = Shelter.find params[:id]
    render json: shelters
  end

  def edit
  end

  def new
  end

  def search

    search = Shelter.near([
      params[:latitude],
      params[:longitude]
    ], 50, units: :km )

  end # search

end # shelter controller
