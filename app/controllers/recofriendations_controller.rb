class RecofriendationsController < ApplicationController
  before_action :set_recofriendation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /recofriendations
  # GET /recofriendations.json
  def index
    @recofriendations = Recofriendation.all.order("created_at DESC")
    @recofriendation = Recofriendation.new
  end

  # GET /recofriendations/1
  # GET /recofriendations/1.json
  def show
  end

  # GET /recofriendations/new
  def new
    @recofriendation = current_user.recofriendations.build
  end

  # GET /recofriendations/1/edit
  def edit
  end

  # POST /recofriendations
  # POST /recofriendations.json
  def create
    @recofriendation = current_user.recofriendations.build(recofriendation_params)

    respond_to do |format|
      if @recofriendation.save
        format.html { redirect_to root_path, notice: "Recofriendation was successfully created." }
        format.json { render :show, status: :created, location: @recofriendation }
      else
        format.html { render :new }
        format.json { render json: @recofriendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recofriendations/1
  # PATCH/PUT /recofriendations/1.json
  def update
    respond_to do |format|
      if @recofriendation.update(recofriendation_params)
        format.html { redirect_to @recofriendation, notice: "Recofriendation was successfully updated." }
        format.json { render :show, status: :ok, location: @recofriendation }
      else
        format.html { render :edit }
        format.json { render json: @recofriendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recofriendations/1
  # DELETE /recofriendations/1.json
  def destroy
    @recofriendation.destroy
    respond_to do |format|
      format.html { redirect_to recofriendations_url, notice: "Recofriendation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recofriendation
    @recofriendation = Recofriendation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def recofriendation_params
    params.require(:recofriendation).permit(:recofriendation)
  end
end
