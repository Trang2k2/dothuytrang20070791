require "application_system_test_case"

class MovieDirectorsTest < ApplicationSystemTestCase
  setup do
    @movie_director = movie_directors(:one)
  end

  test "visiting the index" do
    visit movie_directors_url
    assert_selector "h1", text: "Movie directors"
  end

  test "should create movie director" do
    visit movie_directors_url
    click_on "New movie director"

    fill_in "Director", with: @movie_director.director_id
    fill_in "Movie", with: @movie_director.movie_id
    click_on "Create Movie director"

    assert_text "Movie director was successfully created"
    click_on "Back"
  end

  test "should update Movie director" do
    visit movie_director_url(@movie_director)
    click_on "Edit this movie director", match: :first

    fill_in "Director", with: @movie_director.director_id
    fill_in "Movie", with: @movie_director.movie_id
    click_on "Update Movie director"

    assert_text "Movie director was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie director" do
    visit movie_director_url(@movie_director)
    click_on "Destroy this movie director", match: :first

    assert_text "Movie director was successfully destroyed"
  end
end
