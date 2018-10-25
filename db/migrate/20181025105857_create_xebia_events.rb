class CreateXebiaEvents < ActiveRecord::Migration
  def change
    create_table :xebia_events do |t|
      t.string :name
      t.date :date
      t.string :venue
      t.string :status

      t.timestamps null: false
    end
  end
end
