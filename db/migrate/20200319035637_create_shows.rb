class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.references :channel
      t.string :name
      t.string :start_time
      t.integer :duration_in_minutes
      t.integer :ratings
      t.timestamps
    end
  end
end
