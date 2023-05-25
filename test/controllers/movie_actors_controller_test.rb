require "test_helper"

class MovieActorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_actor = movie_actors(:one)
  end

  test "should get index" do
    get movie_actors_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_actor_url
    assert_response :success
  end

  test "should create movie_actor" do
    assert_difference("MovieActor.count") do
      post movie_actors_url, params: { movie_actor: { actor_id: @movie_actor.actor_id, movie_id: @movie_actor.movie_id } }
    end

    assert_redirected_to movie_actor_url(MovieActor.last)
  end

  test "should show movie_actor" do
    get movie_actor_url(@movie_actor)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_actor_url(@movie_actor)
    assert_response :success
  end

  test "should update movie_actor" do
    patch movie_actor_url(@movie_actor), params: { movie_actor: { actor_id: @movie_actor.actor_id, movie_id: @movie_actor.movie_id } }
    assert_redirected_to movie_actor_url(@movie_actor)
  end

  test "should destroy movie_actor" do
    assert_difference("MovieActor.count", -1) do
      delete movie_actor_url(@movie_actor)
    end

    assert_redirected_to movie_actors_url
  end
end
