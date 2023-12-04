# app/controllers/pages_controller.rb
Mapbox.access_token = 'pk.eyJ1IjoiaWxvdmVyb2IiLCJhIjoiY2xkazhla2NlMDQwZzN1bzM3bGRxdjVoMCJ9.5hY5peqzg63YM6rcfa214A'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :map]

  def home
    @pets_lost = Pet.where(category: "I lost").limit(10).order(created_at: :desc)
    @pets_found = Pet.where(category: "I found").limit(10).order(created_at: :desc)
    @pets = Pet.all

    @markers = @pets.map do |pet|
      location = Mapbox::Geocoder.geocode_forward(pet.city)
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

  def map
    @pets = Pet.all
    @markers = @pets.map do |pet|
      location = Mapbox::Geocoder.geocode_forward(pet.city)
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
