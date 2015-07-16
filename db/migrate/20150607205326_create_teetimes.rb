class CreateTeetimes < ActiveRecord::Migration
  def change
    create_table :teetimes do |t|
      t.date :date
      t.string :course

      t.timestamps null: false
    end
  end
end
