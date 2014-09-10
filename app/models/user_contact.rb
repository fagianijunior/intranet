class UserContact < ActiveRecord::Base
  belongs_to :user
  belongs_to :contacttype
end
