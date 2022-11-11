# frozen_string_literal: true

require 'test_helper'

class SubscribtionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscribtion = subscribtions(:one)
  end

  test 'should get index' do
    get subscribtions_url
    assert_response :success
  end

  test 'should get new' do
    get new_subscribtion_url
    assert_response :success
  end

  test 'should create subscribtion' do
    assert_difference('Subscribtion.count') do
      post subscribtions_url,
           params: { subscribtion: { book_id: @subscribtion.book_id, finish: @subscribtion.finish,
                                     is_active: @subscribtion.is_active, start: @subscribtion.start, subscriber_id: @subscribtion.subscriber_id } }
    end

    assert_redirected_to subscribtion_url(Subscribtion.last)
  end

  test 'should show subscribtion' do
    get subscribtion_url(@subscribtion)
    assert_response :success
  end

  test 'should get edit' do
    get edit_subscribtion_url(@subscribtion)
    assert_response :success
  end

  test 'should update subscribtion' do
    patch subscribtion_url(@subscribtion),
          params: { subscribtion: { book_id: @subscribtion.book_id, finish: @subscribtion.finish,
                                    is_active: @subscribtion.is_active, start: @subscribtion.start, subscriber_id: @subscribtion.subscriber_id } }
    assert_redirected_to subscribtion_url(@subscribtion)
  end

  test 'should destroy subscribtion' do
    assert_difference('Subscribtion.count', -1) do
      delete subscribtion_url(@subscribtion)
    end

    assert_redirected_to subscribtions_url
  end
end
