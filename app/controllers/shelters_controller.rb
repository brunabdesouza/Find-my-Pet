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

    # search = Shelter.near([
    #   params[:latitude],
    #   params[:longitude]
    # ], 50, units: :km )
    search = Shelter.near(
      params[:location],
      params[:radius], units: :km
     )
     # .joins lets me get all the pets that belongs to the shelter I found in the search
      .joins(:pets)
      # .select is how I get the fields from the pets association and get them to show on my query string. Also have changed the field name so they don't clash with the shelter fields
      .select('shelters.name as shelter_name, pets.id as pet_id, pets.name as pet_name, pets.description as pet_description, pets.animal_type as pet_type')
      # .where is what I get from my search in the frontend
      .where(pets: { animal_type: params[:animal_type], available: true}
     )
     # .group_by creates a hash which contains all the animals that belongs to that shelter and shows the results
      .group_by { |item| item.shelter_name }

    render json: search

    # search = Shelter.near([
    #   params[:latitude],
    #   params[:longitude]
    # ], 50, units: :km )

  end # search

end # shelter controller
