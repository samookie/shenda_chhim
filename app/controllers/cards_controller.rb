class CardsController < ApplicationController
  before_action :set_card, only: %i[ show edit update destroy ]
  before_action :set_images, only: %i[ new edit]

  # GET /cards or /cards.json
  def index
    if current_player.present?

      @cards = current_player.cards

    end
  end

  # GET /cards/1 or /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    @card = Card.new
    @player = current_player
  end

  # GET /cards/1/edit
  def edit
    @player = current_player
  end

  # POST /cards or /cards.json
  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to card_url(@card), notice: "Card was successfully created." }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1 or /cards/1.json
  def update
    @player = current_player
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to card_url(@card), notice: "Card was successfully updated." }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1 or /cards/1.json
  def destroy
    @card.destroy!

    respond_to do |format|
      format.html { redirect_to cards_url, notice: "Card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    def set_images
      @images = Dir.glob("public/images/*")
    end

    # Only allow a list of trusted parameters through.
    def card_params
      params.require(:card).permit(:name, :description,:image, :type_card_id, :inventory_id)
    end
end
