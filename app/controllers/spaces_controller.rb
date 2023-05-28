class SpacesController < ApplicationController

wrap_parameters format: []


skip_before_action :authorized, only: [:index, :welcome]

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid,
  with: :render_unprocessable_entity_response

def index
  spaces = Space.all
  render json: spaces
end

def show
  space = Space.find_by!(id: params[:id])
  render json: space, status: :ok

end

def welcome
  render json: {error: "Please login to access this page"}
end

#POST
def create
  # byebug
 space = Space.create(space_params)
 render json: space, status: :created
end

def update
  space = Space.find(params[:id])
  space.update!(update_params)
  render json: space
    end

def destroy
  space = Space.find_by(id: params[:id])
    space.destroy
    render json: {}

end
def available
  spaces = Space.where(is_taken: false)
  render json: spaces
end
def booked
  spaces = Space.where(is_taken: true)
  render json: spaces
end

private

def create_params
params.permit(:comment, :rating, :user_id, :space_id)
end

def update_params
  params.permit(:is_taken, :leased_by_id)
end

def space_params
  params.permit(:name, :size, :image_url, :location, :space_type, :lease_cost, :user_id)
end

def render_not_found_response
  render json: { error: "Listing not found" }, status: :not_found
end

def render_unprocessable_entity_response(invalid)
  render json: {
           errors: invalid.record.errors
         },
         status: :unprocessable_entity
end

end
