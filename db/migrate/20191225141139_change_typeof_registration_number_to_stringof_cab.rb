class ChangeTypeofRegistrationNumberToStringofCab < ActiveRecord::Migration[5.2]
  def change
    change_column :cabs, :registration_number, :string
  end
end
