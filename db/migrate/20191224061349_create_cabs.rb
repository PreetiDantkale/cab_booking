class CreateCabs < ActiveRecord::Migration[5.2]
  def change
    create_table :cabs do |t|
      t.integer :registration_number
      t.string :number_of_seats
      t.timestamps
    end
  end
end
