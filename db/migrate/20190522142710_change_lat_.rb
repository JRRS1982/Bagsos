class ChangeLat < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :latitude, :lat
    rename_column :tasks, :longitude, :lng
  end
end
