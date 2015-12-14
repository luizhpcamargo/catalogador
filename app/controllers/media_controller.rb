# controller for media (comics, movies, books)
class MediaController < ApplicationController
  private

  def permitted_params
    params[:media]
  end
end
