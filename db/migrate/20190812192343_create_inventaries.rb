class CreateInventaries < ActiveRecord::Migration[5.2]
  def change
    create_table :inventaries do |t|
      t.string :name
      t.text :description
      t.integer :initial-date
      t.integer :end-date

      t.timestamps
    end
  end
end
