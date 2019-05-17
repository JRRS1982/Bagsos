class AddLatAndLongFloatToTasks < ActiveRecord::Migration[5.2]
  def change
    change_table :tasks do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
    end
  end
end
