require "test_helper"

class PokemonTrainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon_trainer = pokemon_trainers(:one)
  end

  test "should get index" do
    get pokemon_trainers_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_trainer_url
    assert_response :success
  end

  test "should create pokemon_trainer" do
    assert_difference("PokemonTrainer.count") do
      post pokemon_trainers_url, params: { pokemon_trainer: { name: @pokemon_trainer.name } }
    end

    assert_redirected_to pokemon_trainer_url(PokemonTrainer.last)
  end

  test "should show pokemon_trainer" do
    get pokemon_trainer_url(@pokemon_trainer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_trainer_url(@pokemon_trainer)
    assert_response :success
  end

  test "should update pokemon_trainer" do
    patch pokemon_trainer_url(@pokemon_trainer), params: { pokemon_trainer: { name: @pokemon_trainer.name } }
    assert_redirected_to pokemon_trainer_url(@pokemon_trainer)
  end

  test "should destroy pokemon_trainer" do
    assert_difference("PokemonTrainer.count", -1) do
      delete pokemon_trainer_url(@pokemon_trainer)
    end

    assert_redirected_to pokemon_trainers_url
  end
end
