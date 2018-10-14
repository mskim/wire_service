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

class YhArticle < ApplicationRecord
    before_create :count_chars
    def source_folder
        File.expand_path("~/Download/wire_source/102_KOR_TEXT/20181010") 
    end

    def self.source_folder
        # File.expand_path("~/Download/wire_source/102_KOR_TEXT/20181010") 
        "/Users/mskim/Downloads/wire_source/102_KOR_TEXT/20181010"
    end

    def self.parse_for_day
        xml_folder = "/Users/mskim/Downloads/wire_source/101_KOR/20181010"
        a= Dir.glob("#{xml_folder}/*.xml")
        puts "a.length:#{a.length}"
        a.each do |xml|
            YhArticle.parse_xml(xml)
        end
        a.length
    end

    def self.parse_xml(xml_path)
        # puts "xml_path:#{xml_path}"
    end

    private
    def count_chars
      self.char_count = body.length
    end
end
