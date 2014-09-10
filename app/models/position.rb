class Position < ActiveRecord::Base
  before_save { self.position = position.humanize }

  validates :position,
                       presence: true,
                       uniqueness: { case_sensitive: false  }
end
