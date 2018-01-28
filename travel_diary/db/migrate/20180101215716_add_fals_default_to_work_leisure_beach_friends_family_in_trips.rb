class AddFalsDefaultToWorkLeisureBeachFriendsFamilyInTrips < ActiveRecord::Migration[5.1]
  def change
    change_column :trips, :work, :boolean, default: false
    change_column :trips, :leisure, :boolean, default: false
    change_column :trips, :beach, :boolean, default: false
    change_column :trips, :friends, :boolean, default: false
    change_column :trips, :family, :boolean, default: false
  end
end
