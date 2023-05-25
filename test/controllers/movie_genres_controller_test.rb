require "test_helper"

class MovieGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_genre = movie_genres(:one)
  end

  test "should get index" do
    get movie_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_genre_url
    assert_response :success
  end

  test "should create movie_genre" do
    assert_difference("MovieGenre.count") do
      post movie_genres_url, params: { movie_genre: { genre_id: @movie_genre.genre_id, movie_id: @movie_genre.movie_id } }
    end

    assert_redirected_to movie_genre_url(MovieGenre.last)
  end

  test "should show movie_genre" do
    get movie_genre_url(@movie_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_genre_url(@movie_genre)
    assert_response :success
  end

  test "should update movie_genre" do
    patch movie_genre_url(@movie_genre), params: { movie_genre: { genre_id: @movie_genre.genre_id, movie_id: @movie_genre.movie_id } }
    assert_redirected_to movie_genre_url(@movie_genre)
  end

  test "should destroy movie_genre" do
    assert_difference("MovieGenre.count", -1) do
      delete movie_genre_url(@movie_genre)
    end

    assert_redirected_to movie_genres_url
  end
end
