class SpacesController < ApplicationController
def index
  spaces = Space.all
  render json: {spaces: spaces}, include: :reviews
end

def show
  space = Space.find_by(id: params[:id])
  if space
    render json: {space: space}, include: :reviews, status: :ok
  else
    render json: { error: "Space not found" }, status: :not_found
  end
end
end
