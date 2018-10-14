# == Schema Information
#
# Table name: yh_pictures
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
#  subtile         :string
#  body            :string
#  picture         :string
#  taken_by        :string
#  selected        :boolean
#  group           :string
#  page            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class YhPictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
