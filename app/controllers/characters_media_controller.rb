# character and media link
class CharactersMediaController < ApplicationController
  private

  def permitted_params
    params.require(:characters_media)
      .permit(:id,
              :media_id,
              :character_id,
              :character_role_id,
              :created_at,
              :updated_at)
  end
end
