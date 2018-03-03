class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :yado_id, null: false
      t.string :name
      t.integer :capacity

      t.timestamps
    end
    add_index :rooms, :yado_id
  end
end
