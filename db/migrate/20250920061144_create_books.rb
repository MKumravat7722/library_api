class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.integer :published_year
      t.integer :copies_available

      t.timestamps
    end
  end
end
