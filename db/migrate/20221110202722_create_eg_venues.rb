class CreateEgVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :eg_venues do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
