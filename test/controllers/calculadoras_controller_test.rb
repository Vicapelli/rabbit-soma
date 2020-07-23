require 'test_helper'

class CalculadorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculadora = calculadoras(:one)
  end

  test "should get index" do
    get calculadoras_url
    assert_response :success
  end

  test "should get new" do
    get new_calculadora_url
    assert_response :success
  end

  test "should create calculadora" do
    assert_difference('Calculadora.count') do
      post calculadoras_url, params: { calculadora: { num1: @calculadora.num1, num2: @calculadora.num2 } }
    end

    assert_redirected_to calculadora_url(Calculadora.last)
  end

  test "should show calculadora" do
    get calculadora_url(@calculadora)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculadora_url(@calculadora)
    assert_response :success
  end

  test "should update calculadora" do
    patch calculadora_url(@calculadora), params: { calculadora: { num1: @calculadora.num1, num2: @calculadora.num2 } }
    assert_redirected_to calculadora_url(@calculadora)
  end

  test "should destroy calculadora" do
    assert_difference('Calculadora.count', -1) do
      delete calculadora_url(@calculadora)
    end

    assert_redirected_to calculadoras_url
  end
end
