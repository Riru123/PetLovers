# app/controllers/pages_controller.rb
Mapbox.access_token = 'pk.eyJ1IjoiaWxvdmVyb2IiLCJhIjoiY2xkazhla2NlMDQwZzN1bzM3bGRxdjVoMCJ9.5hY5peqzg63YM6rcfa214A'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :map]

  def home
    @pets_lost = Pet.where(category: "I lost").limit(10).order(created_at: :desc)
    @pets_found = Pet.where(category: "I found").limit(10).order(created_at: :desc)
    @map_data = get_map_data
  end

  def map
    @map_data = get_map_data
    # if params[:query].present?
    #   placenames = Mapbox::Geocoder.geocode_forward(params[:query])
    #   @center = {
    #     lat: placenames[0]["features"][0]["center"][1],
    #     lng: placenames[0]["features"][0]["center"][0],
    #     zoom: 14
    #   }
    # else
    #   @center = { lat: 4.895168, lng: 52.370216, zoom: 9}
    # end
  end

  def profile
    @pets_report = Pet.where(user_id: current_user, missing: true).order(created_at: :desc)
    @past_report = Pet.where(user_id: current_user, missing: false).order(created_at: :desc)
  end

  private

  def get_map_data
    @pets = Pet.all
    @markers = @pets.map do |pet|
      full_address = "#{pet.street}, #{pet.city}, #{pet.country}, #{pet.zip_code}"
      location = Mapbox::Geocoder.geocode_forward(full_address)
      if location[0]["features"].size > 0
        coordinates = location[0]["features"][0]["geometry"]["coordinates"]
        if coordinates
          {
            lat: coordinates[1],
            lng: coordinates[0],
            info_window_html: render_to_string(partial: "shared/info_window", locals: { pet: pet }),
            marker_html: render_to_string(partial: "shared/marker", locals: { pet: pet })
          }
        end
      end
    end
  end

end
