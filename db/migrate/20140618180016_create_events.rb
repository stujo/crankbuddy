class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :description
      t.string :date
      t.string :time
      t.string :location
      t.string :address
      t.string :difficulty
      t.references :user, index: true

      t.timestamps
    end
  end
end
