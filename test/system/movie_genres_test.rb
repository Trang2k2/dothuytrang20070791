require "application_system_test_case"

class MovieGenresTest < ApplicationSystemTestCase
  setup do
    @movie_genre = movie_genres(:one)
  end

  test "visiting the index" do
    visit movie_genres_url
    assert_selector "h1", text: "Movie genres"
  end

  test "should create movie genre" do
    visit movie_genres_url
    click_on "New movie genre"

    fill_in "Genre", with: @movie_genre.genre_id
    fill_in "Movie", with: @movie_genre.movie_id
    click_on "Create Movie genre"

    assert_text "Movie genre was successfully created"
    click_on "Back"
  end

  test "should update Movie genre" do
    visit movie_genre_url(@movie_genre)
    click_on "Edit this movie genre", match: :first

    fill_in "Genre", with: @movie_genre.genre_id
    fill_in "Movie", with: @movie_genre.movie_id
    click_on "Update Movie genre"

    assert_text "Movie genre was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie genre" do
    visit movie_genre_url(@movie_genre)
    click_on "Destroy this movie genre", match: :first

    assert_text "Movie genre was successfully destroyed"
  end
end
