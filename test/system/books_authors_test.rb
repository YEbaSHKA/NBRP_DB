# frozen_string_literal: true

require 'application_system_test_case'

class BooksAuthorsTest < ApplicationSystemTestCase
  setup do
    @books_author = books_authors(:one)
  end

  test 'visiting the index' do
    visit books_authors_url
    assert_selector 'h1', text: 'Books authors'
  end

  test 'should create books author' do
    visit books_authors_url
    click_on 'New books author'

    fill_in 'Author', with: @books_author.author_id
    fill_in 'Book', with: @books_author.book_id
    click_on 'Create Books author'

    assert_text 'Books author was successfully created'
    click_on 'Back'
  end

  test 'should update Books author' do
    visit books_author_url(@books_author)
    click_on 'Edit this books author', match: :first

    fill_in 'Author', with: @books_author.author_id
    fill_in 'Book', with: @books_author.book_id
    click_on 'Update Books author'

    assert_text 'Books author was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Books author' do
    visit books_author_url(@books_author)
    click_on 'Destroy this books author', match: :first

    assert_text 'Books author was successfully destroyed'
  end
end
