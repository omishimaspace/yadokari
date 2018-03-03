class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :yado_id
      t.integer :room_id
      t.string :name
      t.string :email
      t.string :tel
      t.date :check_in_on
      t.date :check_out_on
      t.string :check_in_time
      t.integer :mens_number
      t.integer :womens_number
      t.string :purpose_of_use
      t.string :payment_method
      t.string :coupon
      t.string :note
      t.string :status
      t.string :token

      t.timestamps
    end
    add_index :reservations, :token
  end
end
