require "application_system_test_case"

class TypeCardsTest < ApplicationSystemTestCase
  setup do
    @type_card = type_cards(:one)
  end

  test "visiting the index" do
    visit type_cards_url
    assert_selector "h1", text: "Type cards"
  end

  test "should create type card" do
    visit type_cards_url
    click_on "New type card"

    fill_in "Libelle", with: @type_card.libelle
    click_on "Create Type card"

    assert_text "Type card was successfully created"
    click_on "Back"
  end

  test "should update Type card" do
    visit type_card_url(@type_card)
    click_on "Edit this type card", match: :first

    fill_in "Libelle", with: @type_card.libelle
    click_on "Update Type card"

    assert_text "Type card was successfully updated"
    click_on "Back"
  end

  test "should destroy Type card" do
    visit type_card_url(@type_card)
    click_on "Destroy this type card", match: :first

    assert_text "Type card was successfully destroyed"
  end
end
