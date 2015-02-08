class CreateBookNames < ActiveRecord::Migration
  def change
    create_table :book_names do |t|
      t.string :title
      t.string :author
      t.text :content

      t.timestamps null: false
    end
  end
end
