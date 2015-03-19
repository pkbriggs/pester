class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.string :phone_number
      t.boolean :seen_intro, default: false
      t.timestamps
    end
  end
end