class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :people
      t.string :date
      t.string :time
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
