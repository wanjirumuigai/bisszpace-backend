class SpacesController < ApplicationController
skip_before_action :authorized, only: [:index]
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



private

def create_params
params.permit(:comment, :rating, :user_id, :space_id)
end
def update_params
  params.permit(:is_taken, :leased_by_id)
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
