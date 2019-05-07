class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :rows
      t.text :cols
      t.text :name
      t.text :bonus

      t.timestamps
    end
  end
end
