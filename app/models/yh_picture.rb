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

class YhPicture < ApplicationRecord
    
    def sorce_path
        "/wire_source/201_PHOTO_YNA/20181010"
    end

    def full_size_path
      full_size = picture.split(" ").first
      sorce_path + "/#{full_size}"
    end

    def preview_path
      preview = picture.split(" ")[1]
      sorce_path + "/#{preview}"
    end

    def thumb_path
      thumb = picture.split(" ").last
      sorce_path + "/#{thumb}"
    end
end
