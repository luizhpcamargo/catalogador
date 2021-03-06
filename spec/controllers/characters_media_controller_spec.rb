require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CharactersMediaController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # CharactersMedia. As you add validations to CharactersMedia, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { media_id: nil,
      character_id: nil,
      character_role_id: nil }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CharactersMediaController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all characters_media as @characters_media' do
      characters_media = CharactersMedia.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:characters_media)).to eq([characters_media])
    end
  end

  describe 'GET show' do
    it 'assigns the requested characters_media as @characters_media' do
      characters_media = CharactersMedia.create! valid_attributes
      get :show, { id: characters_media.to_param }, valid_session
      expect(assigns(:characters_media)).to eq(characters_media)
    end
  end

  describe 'GET new' do
    it 'assigns a new characters_media as @characters_media' do
      get :new, {}, valid_session
      expect(assigns(:characters_media)).to be_a_new(CharactersMedia)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested characters_media as @characters_media' do
      characters_media = CharactersMedia.create! valid_attributes
      get :edit, { id: characters_media.to_param }, valid_session
      expect(assigns(:characters_media)).to eq(characters_media)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new CharactersMedia' do
        expect do
          post :create, { characters_media: valid_attributes }, valid_session
        end.to change(CharactersMedia, :count).by(1)
      end

      it 'assigns a newly created characters_media as @characters_media' do
        post :create, { characters_media: valid_attributes }, valid_session
        expect(assigns(:characters_media)).to be_a(CharactersMedia)
        expect(assigns(:characters_media)).to be_persisted
      end

      it 'redirects to the created characters_media' do
        post :create, { characters_media: valid_attributes }, valid_session
        expect(response).to redirect_to(CharactersMedia.last)
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested characters_media' do
        characters_media = CharactersMedia.create! valid_attributes
        put :update, { id: characters_media.to_param,
                       characters_media: new_attributes }, valid_session
      end

      it 'assigns the requested characters_media as @characters_media' do
        characters_media = CharactersMedia.create! valid_attributes
        put :update, { id: characters_media.to_param,
                       characters_media: valid_attributes }, valid_session
        expect(assigns(:characters_media)).to eq(characters_media)
      end

      it 'redirects to the characters_media' do
        characters_media = CharactersMedia.create! valid_attributes
        put :update, { id: characters_media.to_param,
                       characters_media: valid_attributes },
            valid_session
        expect(response).to redirect_to(characters_media)
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested characters_media' do
      characters_media = CharactersMedia.create! valid_attributes
      expect do
        delete :destroy, { id: characters_media.to_param }, valid_session
      end.to change(CharactersMedia, :count).by(-1)
    end

    it 'redirects to the characters_media list' do
      characters_media = CharactersMedia.create! valid_attributes
      delete :destroy, { id: characters_media.to_param }, valid_session
      expect(response).to redirect_to(characters_media_index_url)
    end
  end
end
