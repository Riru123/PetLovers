class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @pets_lost = Pet.where(category: "I lost").limit(10).order(created_at: :desc)
    @pets_found = Pet.where(category: "I found").limit(10).order(created_at: :desc)
  end
end
