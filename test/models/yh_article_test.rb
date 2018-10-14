# == Schema Information
#
# Table name: yh_articles
#
#  id              :integer          not null, primary key
#  action          :string
#  service_type    :string
#  content_id      :string
#  date            :date
#  time            :time
#  urgency         :string
#  category        :string
#  class_code      :string
#  attriubute_code :string
#  source          :string
#  credit          :string
#  region          :string
#  title           :string
#  body            :text
#  writer          :string
#  taken_by        :string
#  selected        :boolean
#  group           :string
#  page            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class YhArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
