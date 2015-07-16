class AddTimeToTeetimes < ActiveRecord::Migration
  def change
    add_column :teetimes, :time, :time
  end
end
