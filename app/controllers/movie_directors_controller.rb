class MovieDirectorsController < ApplicationController
  before_action :set_movie_director, only: %i[ show edit update destroy ]

  # GET /movie_directors or /movie_directors.json
  def index
    @movie_directors = MovieDirector.all
  end

  # GET /movie_directors/1 or /movie_directors/1.json
  def show
  end

  # GET /movie_directors/new
  def new
    @movie_director = MovieDirector.new
  end

  # GET /movie_directors/1/edit
  def edit
  end

  # POST /movie_directors or /movie_directors.json
  def create
    @movie_director = MovieDirector.new(movie_director_params)

    respond_to do |format|
      if @movie_director.save
        format.html { redirect_to movie_director_url(@movie_director), notice: "Movie director was successfully created." }
        format.json { render :show, status: :created, location: @movie_director }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_directors/1 or /movie_directors/1.json
  def update
    respond_to do |format|
      if @movie_director.update(movie_director_params)
        format.html { redirect_to movie_director_url(@movie_director), notice: "Movie director was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_director }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_directors/1 or /movie_directors/1.json
  def destroy
    @movie_director.destroy

    respond_to do |format|
      format.html { redirect_to movie_directors_url, notice: "Movie director was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_director
      @movie_director = MovieDirector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_director_params
      params.require(:movie_director).permit(:movie_id, :director_id)
    end
end
