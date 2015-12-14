# character and media link
class CharactersMediaController < ApplicationController
  private

  def permitted_params
    params[:characters_media]
  end
end
