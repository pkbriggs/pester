class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :phone_number
      t.string :name
      t.timestamps
    end
  end
end
