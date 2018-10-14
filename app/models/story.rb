# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  date       :date
#  reporter   :string
#  group      :string
#  title      :string
#  subtitle   :string
#  quote      :string
#  body       :text
#  char_count :integer
#  publish      :boolean
#  sent       :time
#  user_id    :integer
#  page       :integer
#  order      :integer
#  path       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Story < ApplicationRecord
  belongs_to :user, optional: true
  before_create :set_atts
  before_save :count_chars

private
  def count_chars
    self.char_count = body.length
  end
  
  def set_atts
    self.group    = user.group
    self.reporter = user.name
  end
end
