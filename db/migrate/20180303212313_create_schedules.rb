class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :yado_id
      t.integer :reservation_id
      t.string :schedule_type
      t.text :note
      t.date :started_on
      t.date :finished_on
      t.timestamps
    end
    add_index :schedules, :yado_id
    add_index :schedules, :started_on
  end
end
