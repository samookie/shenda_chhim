class TypeCardsController < ApplicationController
  before_action :set_type_card, only: %i[ show edit update destroy ]

  # GET /type_cards or /type_cards.json
  def index
    @type_cards = TypeCard.all
  end

  # GET /type_cards/1 or /type_cards/1.json
  def show
  end

  # GET /type_cards/new
  def new
    @type_card = TypeCard.new
  end

  # GET /type_cards/1/edit
  def edit
  end

  # POST /type_cards or /type_cards.json
  def create
    @type_card = TypeCard.new(type_card_params)

    respond_to do |format|
      if @type_card.save
        format.html { redirect_to type_card_url(@type_card), notice: "Type card was successfully created." }
        format.json { render :show, status: :created, location: @type_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_cards/1 or /type_cards/1.json
  def update
    respond_to do |format|
      if @type_card.update(type_card_params)
        format.html { redirect_to type_card_url(@type_card), notice: "Type card was successfully updated." }
        format.json { render :show, status: :ok, location: @type_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_cards/1 or /type_cards/1.json
  def destroy
    @type_card.destroy!

    respond_to do |format|
      format.html { redirect_to type_cards_url, notice: "Type card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_card
      @type_card = TypeCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_card_params
      params.require(:type_card).permit(:libelle)
    end
end
