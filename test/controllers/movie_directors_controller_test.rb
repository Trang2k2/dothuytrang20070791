require "test_helper"

class MovieDirectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_director = movie_directors(:one)
  end

  test "should get index" do
    get movie_directors_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_director_url
    assert_response :success
  end

  test "should create movie_director" do
    assert_difference("MovieDirector.count") do
      post movie_directors_url, params: { movie_director: { director_id: @movie_director.director_id, movie_id: @movie_director.movie_id } }
    end

    assert_redirected_to movie_director_url(MovieDirector.last)
  end

  test "should show movie_director" do
    get movie_director_url(@movie_director)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_director_url(@movie_director)
    assert_response :success
  end

  test "should update movie_director" do
    patch movie_director_url(@movie_director), params: { movie_director: { director_id: @movie_director.director_id, movie_id: @movie_director.movie_id } }
    assert_redirected_to movie_director_url(@movie_director)
  end

  test "should destroy movie_director" do
    assert_difference("MovieDirector.count", -1) do
      delete movie_director_url(@movie_director)
    end

    assert_redirected_to movie_directors_url
  end
end
