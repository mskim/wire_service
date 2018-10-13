class Story < ApplicationRecord
  belongs_to :user
  before_create :set_atts

private
  def set_atts
    self.group    = user.group
    self.reporter = user.reporter
  end
end
