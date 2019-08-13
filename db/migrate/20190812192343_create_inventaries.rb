class CreateInventaries < ActiveRecord::Migration[5.2]
  def change
    create_table :inventaries do |t|
      t.string :name
      t.text :description
      t.integer :initiaDate
      t.integer :endDate
      t.integer :store_id

      t.timestamps
    end
  end
end
