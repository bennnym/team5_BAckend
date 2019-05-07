class AddFlightIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :flight_id, :text
  end
end
