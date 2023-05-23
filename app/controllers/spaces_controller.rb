class SpacesController < ApplicationController
    def index
        spaces = Space.all
        render json: spaces
    end


end
