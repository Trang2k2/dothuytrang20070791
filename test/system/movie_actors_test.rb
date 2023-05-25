require "application_system_test_case"

class MovieActorsTest < ApplicationSystemTestCase
  setup do
    @movie_actor = movie_actors(:one)
  end

  test "visiting the index" do
    visit movie_actors_url
    assert_selector "h1", text: "Movie actors"
  end

  test "should create movie actor" do
    visit movie_actors_url
    click_on "New movie actor"

    fill_in "Actor", with: @movie_actor.actor_id
    fill_in "Movie", with: @movie_actor.movie_id
    click_on "Create Movie actor"

    assert_text "Movie actor was successfully created"
    click_on "Back"
  end

  test "should update Movie actor" do
    visit movie_actor_url(@movie_actor)
    click_on "Edit this movie actor", match: :first

    fill_in "Actor", with: @movie_actor.actor_id
    fill_in "Movie", with: @movie_actor.movie_id
    click_on "Update Movie actor"

    assert_text "Movie actor was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie actor" do
    visit movie_actor_url(@movie_actor)
    click_on "Destroy this movie actor", match: :first

    assert_text "Movie actor was successfully destroyed"
  end
end
