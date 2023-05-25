require "application_system_test_case"

class DirectorsTest < ApplicationSystemTestCase
  setup do
    @director = directors(:one)
  end

  test "visiting the index" do
    visit directors_url
    assert_selector "h1", text: "Directors"
  end

  test "should create director" do
    visit directors_url
    click_on "New director"

    fill_in "Name", with: @director.name
    click_on "Create Director"

    assert_text "Director was successfully created"
    click_on "Back"
  end

  test "should update Director" do
    visit director_url(@director)
    click_on "Edit this director", match: :first

    fill_in "Name", with: @director.name
    click_on "Update Director"

    assert_text "Director was successfully updated"
    click_on "Back"
  end

  test "should destroy Director" do
    visit director_url(@director)
    click_on "Destroy this director", match: :first

    assert_text "Director was successfully destroyed"
  end
end
