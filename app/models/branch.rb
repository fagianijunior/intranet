class Branch < ActiveRecord::Base
  belongs_to :city
  belongs_to :state

  before_save { self.branch = branch.upcase }

  validates :branch, :address, :city, :state, presence: true
  validates :branch, uniqueness: { case_sensitive: false }
end
