class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.datetime :borrowed_on
      t.datetime :due_on
      t.datetime :returned_on

      t.timestamps
    end
  end
end
