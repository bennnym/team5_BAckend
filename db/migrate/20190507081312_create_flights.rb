class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.text :date
      t.text :to
      t.text :from

      t.timestamps
    end
  end
end
