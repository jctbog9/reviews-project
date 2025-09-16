# To run this file, run `bundle exec rake db:seed`

# Create users
user1 = User.create!(name: "Steven", is_verified: false)
user2 = User.create!(name: "John117", is_verified: true)
user3 = User.create!(name: "Jenson", is_verified: false)

# Create authors
author1 = Author.create!(name: "JK Rowling")
author2 = Author.create!(name: "JRR Tolkien")

# Create books with associations
book1 = Book.create!(title: "Harry Potter and the Sorcerer's Stone", author: author1)
book2 = Book.create!(title: "The Hobbit", author: author2)

# Create reviews with associations
Review.create!(book: book1, user: user3, body: "This sucked! JK JK Rowling :)")
Review.create!(book: book1, user: user1, body: "Magical and fun!")
Review.create!(book: book2, user: user2, body: "An epic adventure.")