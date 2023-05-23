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
def update
  space = Space.find(params[:id])
  space.update!(update_params)
  render json: {space: space}
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
end
