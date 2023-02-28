class RenameConfirmedInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :confirmed, :status
  end
end
