require "application_system_test_case"

class CalculadorasTest < ApplicationSystemTestCase
  setup do
    @calculadora = calculadoras(:one)
  end

  test "visiting the index" do
    visit calculadoras_url
    assert_selector "h1", text: "Calculadoras"
  end

  test "creating a Calculadora" do
    visit calculadoras_url
    click_on "New Calculadora"

    fill_in "Num1", with: @calculadora.num1
    fill_in "Num2", with: @calculadora.num2
    click_on "Create Calculadora"

    assert_text "Calculadora was successfully created"
    click_on "Back"
  end

  test "updating a Calculadora" do
    visit calculadoras_url
    click_on "Edit", match: :first

    fill_in "Num1", with: @calculadora.num1
    fill_in "Num2", with: @calculadora.num2
    click_on "Update Calculadora"

    assert_text "Calculadora was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculadora" do
    visit calculadoras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculadora was successfully destroyed"
  end
end
