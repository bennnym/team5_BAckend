class AddUsernameToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :username, :text
  end
end
