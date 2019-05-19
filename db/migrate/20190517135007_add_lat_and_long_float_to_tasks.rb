# frozen_string_literal: true

class AddLatAndLongFloatToTasks < ActiveRecord::Migration[5.2]
  def change
    change_table :tasks do |t|
      t.float :latitude
      t.float :longitude
    end
  end
end
