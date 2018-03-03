class CreateYados < ActiveRecord::Migration[5.1]
  def change
    create_table :yados do |t|
      t.string :name
      t.string :short_name

      t.timestamps
    end
  end
end
