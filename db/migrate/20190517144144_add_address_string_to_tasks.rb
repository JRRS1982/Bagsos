# frozen_string_literal: true

class AddAddressStringToTasks < ActiveRecord::Migration[5.2]
  def change
    change_table :tasks do |t|
      t.string :address
    end
  end
end
