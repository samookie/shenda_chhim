require "test_helper"

class TypeCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_card = type_cards(:one)
  end

  test "should get index" do
    get type_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_type_card_url
    assert_response :success
  end

  test "should create type_card" do
    assert_difference("TypeCard.count") do
      post type_cards_url, params: { type_card: { libelle: @type_card.libelle } }
    end

    assert_redirected_to type_card_url(TypeCard.last)
  end

  test "should show type_card" do
    get type_card_url(@type_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_card_url(@type_card)
    assert_response :success
  end

  test "should update type_card" do
    patch type_card_url(@type_card), params: { type_card: { libelle: @type_card.libelle } }
    assert_redirected_to type_card_url(@type_card)
  end

  test "should destroy type_card" do
    assert_difference("TypeCard.count", -1) do
      delete type_card_url(@type_card)
    end

    assert_redirected_to type_cards_url
  end
end
