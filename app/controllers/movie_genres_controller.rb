class MovieGenresController < ApplicationController
  before_action :set_movie_genre, only: %i[ show edit update destroy ]

  # GET /movie_genres or /movie_genres.json
  def index
    @movie_genres = MovieGenre.all
  end

  # GET /movie_genres/1 or /movie_genres/1.json
  def show
  end

  # GET /movie_genres/new
  def new
    @movie_genre = MovieGenre.new
  end

  # GET /movie_genres/1/edit
  def edit
  end

  # POST /movie_genres or /movie_genres.json
  def create
    @movie_genre = MovieGenre.new(movie_genre_params)

    respond_to do |format|
      if @movie_genre.save
        format.html { redirect_to movie_genre_url(@movie_genre), notice: "Movie genre was successfully created." }
        format.json { render :show, status: :created, location: @movie_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_genres/1 or /movie_genres/1.json
  def update
    respond_to do |format|
      if @movie_genre.update(movie_genre_params)
        format.html { redirect_to movie_genre_url(@movie_genre), notice: "Movie genre was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_genres/1 or /movie_genres/1.json
  def destroy
    @movie_genre.destroy

    respond_to do |format|
      format.html { redirect_to movie_genres_url, notice: "Movie genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_genre
      @movie_genre = MovieGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_genre_params
      params.require(:movie_genre).permit(:movie_id, :genre_id)
    end
end
