class CaptionsController < ApplicationController
  before_action :set_caption, only: [:show, :edit, :update, :destroy]

  # GET /captions
  # GET /captions.json
  def index
    @captions = Caption.all
  end

  # GET /captions/1
  # GET /captions/1.json
  def show
  end

  # GET /captions/new
  def new
    @caption = Caption.new
  end

  # GET /captions/1/edit
  def edit
  end

  # POST /captions
  # POST /captions.json
  def create
    @caption = Caption.new(caption_params)
    @caption.load_picture_from_meme!

    respond_to do |format|
      if @caption.save
        format.html { redirect_to @caption, notice: 'Caption was successfully created.' }
        format.json { render action: 'show', status: :created, location: @caption }
      else
        format.html { render action: 'new' }
        format.json { render json: @caption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /captions/1
  # PATCH/PUT /captions/1.json
  def update
    @caption.load_picture_from_meme!
    respond_to do |format|
      if @caption.update(caption_params)
        format.html { redirect_to @caption, notice: 'Caption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @caption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captions/1
  # DELETE /captions/1.json
  def destroy
    @caption.destroy
    respond_to do |format|
      format.html { redirect_to captions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caption
      @caption = Caption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caption_params
      params.require(:caption).permit(:sentence, :meme_id, :picture)
    end
end
