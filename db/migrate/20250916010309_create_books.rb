class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :page_count, default: 1

      t.belongs_to :author
      
      t.timestamps
    end
  end
end
