class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @pets_missing = Pet.where(missing: true).limit(3)
    @pets_found = Pet.where(missing: false).limit(3)
  end
end
