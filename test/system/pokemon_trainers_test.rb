require "application_system_test_case"

class PokemonTrainersTest < ApplicationSystemTestCase
  setup do
    @pokemon_trainer = pokemon_trainers(:one)
  end

  test "visiting the index" do
    visit pokemon_trainers_url
    assert_selector "h1", text: "Pokemon trainers"
  end

  test "should create pokemon trainer" do
    visit pokemon_trainers_url
    click_on "New pokemon trainer"

    fill_in "Name", with: @pokemon_trainer.name
    click_on "Create Pokemon trainer"

    assert_text "Pokemon trainer was successfully created"
    click_on "Back"
  end

  test "should update Pokemon trainer" do
    visit pokemon_trainer_url(@pokemon_trainer)
    click_on "Edit this pokemon trainer", match: :first

    fill_in "Name", with: @pokemon_trainer.name
    click_on "Update Pokemon trainer"

    assert_text "Pokemon trainer was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon trainer" do
    visit pokemon_trainer_url(@pokemon_trainer)
    click_on "Destroy this pokemon trainer", match: :first

    assert_text "Pokemon trainer was successfully destroyed"
  end
end
