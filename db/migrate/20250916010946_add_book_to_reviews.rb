class AddBookToReviews < ActiveRecord::Migration[7.2]
  def change
    add_reference :reviews, :book, null: false, foreign_key: true
  end
end
