class PokemonTrainersController < ApplicationController
  before_action :set_pokemon_trainer, only: %i[ show edit update destroy ]

  # GET /pokemon_trainers or /pokemon_trainers.json
  def index
    @pokemon_trainers = PokemonTrainer.all
  end

  # GET /pokemon_trainers/1 or /pokemon_trainers/1.json
  def show
  end

  # GET /pokemon_trainers/new
  def new
    @pokemon_trainer = PokemonTrainer.new
  end

  # GET /pokemon_trainers/1/edit
  def edit
  end

  # POST /pokemon_trainers or /pokemon_trainers.json
  def create
    @pokemon_trainer = PokemonTrainer.new(pokemon_trainer_params)

    respond_to do |format|
      if @pokemon_trainer.save
        format.html { redirect_to pokemon_trainer_url(@pokemon_trainer), notice: "Pokemon trainer was successfully created." }
        format.json { render :show, status: :created, location: @pokemon_trainer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokemon_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_trainers/1 or /pokemon_trainers/1.json
  def update
    respond_to do |format|
      if @pokemon_trainer.update(pokemon_trainer_params)
        format.html { redirect_to pokemon_trainer_url(@pokemon_trainer), notice: "Pokemon trainer was successfully updated." }
        format.json { render :show, status: :ok, location: @pokemon_trainer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokemon_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_trainers/1 or /pokemon_trainers/1.json
  def destroy
    @pokemon_trainer.destroy!

    respond_to do |format|
      format.html { redirect_to pokemon_trainers_url, notice: "Pokemon trainer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_trainer
      @pokemon_trainer = PokemonTrainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokemon_trainer_params
      params.require(:pokemon_trainer).permit(:name)
    end
end
