class BranchContact < ActiveRecord::Base
  belongs_to :branch
  belongs_to :contacttype
end
