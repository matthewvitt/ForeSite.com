class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :teetimes, :date, :datetime
  end

  def down
    change_column :teetimes, :date, :date
  end
end


