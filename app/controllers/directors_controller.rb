class DirectorsController < ApplicationController
  before_action :set_director, only: %i[ show edit update destroy ]

  # GET /directors or /directors.json
  def index
    @directors = Director.all
  end

  # GET /directors/1 or /directors/1.json
  def show
  end

  # GET /directors/new
  def new
    @director = Director.new
  end

  # GET /directors/1/edit
  def edit
  end

  # POST /directors or /directors.json
  def create
    @director = Director.new(director_params)

    respond_to do |format|
      if @director.save
        format.html { redirect_to director_url(@director), notice: "Director was successfully created." }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directors/1 or /directors/1.json
  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to director_url(@director), notice: "Director was successfully updated." }
        format.json { render :show, status: :ok, location: @director }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directors/1 or /directors/1.json
  def destroy
    @director.destroy

    respond_to do |format|
      format.html { redirect_to directors_url, notice: "Director was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director
      @director = Director.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def director_params
      params.require(:director).permit(:name)
    end
end
