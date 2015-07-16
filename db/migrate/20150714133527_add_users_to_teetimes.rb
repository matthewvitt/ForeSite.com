class AddUsersToTeetimes < ActiveRecord::Migration
  def change
    add_reference :teetimes, :user, index: true, foreign_key: true
  end
end
