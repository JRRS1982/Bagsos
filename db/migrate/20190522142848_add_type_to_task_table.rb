class AddTypeToTaskTable < ActiveRecord::Migration[5.2]
  def change
    change_table :tasks do |t|
      t.string :type, :limit => 30
    end
  end
end
