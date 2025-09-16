class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.string :body, null: false

      t.belongs_to :user

      t.timestamps
    end
  end
end
