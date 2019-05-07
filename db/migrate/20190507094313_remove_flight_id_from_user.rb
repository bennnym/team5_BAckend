class RemoveFlightIdFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :flight_id, :integer
  end
end
