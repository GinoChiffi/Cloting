require 'test_helper'

class ZoekertjesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zoekertje = zoekertjes(:one)
  end

  test "should get index" do
    get zoekertjes_url
    assert_response :success
  end

  test "should get new" do
    get new_zoekertje_url
    assert_response :success
  end

  test "should create zoekertje" do
    assert_difference('Zoekertje.count') do
      post zoekertjes_url, params: { zoekertje: { description: @zoekertje.description, title: @zoekertje.title } }
    end

    assert_redirected_to zoekertje_url(Zoekertje.last)
  end

  test "should show zoekertje" do
    get zoekertje_url(@zoekertje)
    assert_response :success
  end

  test "should get edit" do
    get edit_zoekertje_url(@zoekertje)
    assert_response :success
  end

  test "should update zoekertje" do
    patch zoekertje_url(@zoekertje), params: { zoekertje: { description: @zoekertje.description, title: @zoekertje.title } }
    assert_redirected_to zoekertje_url(@zoekertje)
  end

  test "should destroy zoekertje" do
    assert_difference('Zoekertje.count', -1) do
      delete zoekertje_url(@zoekertje)
    end

    assert_redirected_to zoekertjes_url
  end
end
