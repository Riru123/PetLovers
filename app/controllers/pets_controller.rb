class PetsController < ApplicationController
    def index
        @pets = Pet.all
    end
end
