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

require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
