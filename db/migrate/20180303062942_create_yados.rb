class CreateYados < ActiveRecord::Migration[5.1]
  def change
    create_table :yados do |t|
      t.string :name
      t.string :short_name
      t.string :url
      t.string :note

      t.timestamps
    end
    add_index :yados, :name, unique: true
  end
end
