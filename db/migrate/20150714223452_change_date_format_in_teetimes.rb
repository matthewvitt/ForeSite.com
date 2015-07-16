class ChangeDateFormatInTeetimes < ActiveRecord::Migration
  def up
    change_column :teetimes, :date, :date
  end

  def down
    change_column :teetimes, :date, :datetime
  end
end

