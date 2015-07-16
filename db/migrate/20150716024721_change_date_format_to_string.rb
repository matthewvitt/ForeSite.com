class ChangeDateFormatToString < ActiveRecord::Migration
  def up
    change_column :teetimes, :date, :string
  end

  def down
    change_column :teetimes, :date, :datetime
  end
end