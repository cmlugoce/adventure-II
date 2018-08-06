class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :image
      t.integer :distance
      t.string :date
      t.text :notes
      t.integer :user_id
      t.integer :park_id

      t.timestamps
    end
  end
end
