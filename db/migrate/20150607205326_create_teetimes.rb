class CreateTeetimes < ActiveRecord::Migration
  def change
    create_table :teetimes do |t|
      t.datetime :date
      t.string :course

      t.timestamps null: false
    end
  end
end
