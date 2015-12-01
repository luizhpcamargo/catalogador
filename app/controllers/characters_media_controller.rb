#character and media link
class CharactersMediaController < ApplicationController
  before_action :set_characters_media, only: [:show, :edit, :update, :destroy]

  # GET /characters_media
  # GET /characters_media.json
  def index
    @characters_media = CharactersMedia.all
  end

  # GET /characters_media/1
  # GET /characters_media/1.json
  def show
  end

  # GET /characters_media/new
  def new
    @characters_media = CharactersMedia.new
  end

  # GET /characters_media/1/edit
  def edit
  end

  # POST /characters_media
  # POST /characters_media.json
  def create
    @characters_media = CharactersMedia.new(characters_media_params)

    respond_to do |format|
      if @characters_media.save
        format.html { redirect_to @characters_media, notice: 'Characters media was successfully created.' }
        format.json { render :show, status: :created, location: @characters_media }
      else
        format.html { render :new }
        format.json { render json: @characters_media.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters_media/1
  # PATCH/PUT /characters_media/1.json
  def update
    respond_to do |format|
      if @characters_media.update(characters_media_params)
        format.html { redirect_to @characters_media, notice: 'Characters media was successfully updated.' }
        format.json { render :show, status: :ok, location: @characters_media }
      else
        format.html { render :edit }
        format.json { render json: @characters_media.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters_media/1
  # DELETE /characters_media/1.json
  def destroy
    @characters_media.destroy
    respond_to do |format|
      format.html { redirect_to characters_media_index_url, notice: 'Characters media was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_characters_media
      @characters_media = CharactersMedia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def characters_media_params
      params[:characters_media]
    end
end
