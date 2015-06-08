class Teetime < ActiveRecord::Base

  belongs_to :user

  validates :date, presence: true
  validates :course, presence:true

end
