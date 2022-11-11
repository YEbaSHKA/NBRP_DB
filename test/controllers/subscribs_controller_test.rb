# frozen_string_literal: true

require 'test_helper'

class SubscribsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscrib = subscribs(:one)
  end

  test 'should get index' do
    get subscribs_url
    assert_response :success
  end

  test 'should get new' do
    get new_subscrib_url
    assert_response :success
  end

  test 'should create subscrib' do
    assert_difference('Subscrib.count') do
      post subscribs_url, params: { subscrib: {} }
    end

    assert_redirected_to subscrib_url(Subscrib.last)
  end

  test 'should show subscrib' do
    get subscrib_url(@subscrib)
    assert_response :success
  end

  test 'should get edit' do
    get edit_subscrib_url(@subscrib)
    assert_response :success
  end

  test 'should update subscrib' do
    patch subscrib_url(@subscrib), params: { subscrib: {} }
    assert_redirected_to subscrib_url(@subscrib)
  end

  test 'should destroy subscrib' do
    assert_difference('Subscrib.count', -1) do
      delete subscrib_url(@subscrib)
    end

    assert_redirected_to subscribs_url
  end
end
