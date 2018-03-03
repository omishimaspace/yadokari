class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :reservation_id
      t.string :schedule_type
      t.text :note
      t.date :started_at
      t.date :finished_at
      t.timestamps
    end
    add_index :schedules, :started_at
  end
end
