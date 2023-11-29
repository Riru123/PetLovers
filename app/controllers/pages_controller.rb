class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @pets_lost = Pet.where(category: "I lost").limit(3)
    @pets_found = Pet.where(category: "I found").limit(3)
  end
end
