# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Subscription.delete_all
BooksGenre.delete_all
BooksAuthor.delete_all
Genre.delete_all
Author.delete_all
Book.delete_all
Subscriber.delete_all
11.times { |genre| Genre.create(name: "genre #{genre}") }

11.times { |autor| Author.create(name: "author #{autor}") }

11.times { |book| Book.create(name: "book #{book}", year: rand(1500..2022), quantity: rand(0..100)) }

11.times { |subscriber| Subscriber.create(name: "subscriber #{subscriber}") }

authors = Author.all
books = Book.all
genres = Genre.all
subscribers = Subscriber.all 

11.times { BooksAuthor.create(book: books[rand(0..10)], author: authors[rand(0..10)]) }

11.times { BooksGenre.create(book: books[rand(0..10)], genre: genres[rand(0..10)]) }

11.times { Subscription.create(subscriber: subscribers[rand(0..10)], book: books[rand(0..10)], start: Date.new(2022, 2, 3), finish: Date.new(2022, 3, 4), is_active: rand(2) == 1 ? true : false) }
