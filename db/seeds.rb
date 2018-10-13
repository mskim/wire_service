require 'happymapper'
require 'yaml'
# require 'respec/autorun'
#

class Header
  include HappyMapper
  has_one :Action, String
  has_one :ServiceType, String
  has_one :ContentID, String
  has_one :SendDate, String
  has_one :SendTime, String

  def to_hash
    h = {}
    h[:action] = self.Action if self.Action
    h[:service_type] = self.ServiceType if self.ServiceType
    h[:content_id] = self.ContentID if self.ContentID
    h[:date] = self.SendDate if self.SendDate
    h[:time] = self.SendTime if self.SendTime
    h
  end
end
#
class Metadata
  include HappyMapper
  tag 'Metadata'
  has_one :Urgency, String
  has_one :Category, String
  has_one :Region, String
  has_many :Class, String, tag: 'Class'
  has_one :Credit, String
  has_one :Source, String

  def to_hash
    h = {}
    h[:urgency] = self.Urgency if self.Urgency
    h[:category] = self.Category if self.Category
    h[:region] = self.Region if self.Region
    h[:class_code] = self.Class if self.Class
    h[:credit] = self.Credit if self.Credit
    h[:source] = self.Source if self.Source

    h
  end
end

class NewsContent
  include HappyMapper
  tag 'NewsContent'
  has_one :Title, String
  has_one :Subtitle, String
  has_one :Body, String
  has_one :MultiMedia, String

  def to_hash
    h = {}
    h[:title]     = self.Title if self.Title
    h[:subtitle]  = self.Subtitle if self.Subtitle
    h[:body]      = self.Body if self.Body
    h[:picture]   = self.MultiMedia if self.MultiMedia
    h
  end
end

class YNewsML
  include HappyMapper
  tag 'YNewsML'
  has_one :Header, Header
  has_one :Metadata, Metadata
  has_one :NewsContent, NewsContent
  # has_one :link, String, xpath: 'Header'

  def to_hash
    h = self.Header.to_hash
    h.merge! self.Metadata.to_hash
    h.merge! self.NewsContent.to_hash
    h
  end
end

source = "#{Rails.root}/public/wire_source/101_KOR/20181010"
puts "parsing 101_KOR/20181010..."
Dir.glob("#{source}/*.xml").each do |f|
  xml = File.open(f, 'r'){|f| f.read}
  h = YNewsML.parse(xml).to_hash
#   puts "f:#{f}"
  YhArticle.create!(h)
end


source = "#{Rails.root}/public/wire_source/201_PHOTO_YNA/20181010"
puts "parsing 201_PHOTO_YNA/20181010..."
Dir.glob("#{source}/*.xml").each do |f|
  xml = File.open(f, 'r'){|f| f.read}
  h = YNewsML.parse(xml).to_hash
#   puts "f:#{f}"
  YhPicture.create!(h)
end

