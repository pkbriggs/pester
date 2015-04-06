class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      # t.string :first_name
      # t.string :last_name
      t.string :name
      t.string :phone_number
      t.boolean :seen_intro, default: false
      t.boolean :prank_active, default: true
      t.timestamps
    end
  end
end
