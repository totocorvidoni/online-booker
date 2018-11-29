class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :from_airport
      t.references :to_airport
      t.datetime :departure
      t.string   :duration

      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :from_airport_id, primary_key: :id
    add_foreign_key :flights, :airports, column: :to_airport_id,   primary_key: :id
  end
end
