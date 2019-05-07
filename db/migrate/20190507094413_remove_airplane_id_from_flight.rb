class RemoveAirplaneIdFromFlight < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :airplane_id, :integer
  end
end
