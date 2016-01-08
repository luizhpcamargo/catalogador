require 'rails_helper'

RSpec.describe CharactersMediaController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/characters_media').to route_to('characters_media#index')
    end

    it 'routes to #new' do
      expect(get: '/characters_media/new').to route_to('characters_media#new')
    end

    it 'routes to #show' do
      expect(get: '/characters_media/1').to route_to('characters_media#show', 
        id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/characters_media/1/edit').to route_to('characters_media#edit', 
        id: '1')
    end

    it 'routes to #create' do
      expect(post: '/characters_media').to route_to('characters_media#create')
    end

    it 'routes to #update' do
      expect(put: '/characters_media/1').to route_to('characters_media#update', 
        id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/characters_media/1').to route_to('characters_media#destroy', 
        id: '1')
    end
  end
end
