require 'rails_helper'

RSpec.describe "CharactersMedia", :type => :request do
  describe "GET /characters_media" do
    it "works! (now write some real specs)" do
      get characters_media_index_path
      expect(response).to have_http_status(200)
    end
  end
end
