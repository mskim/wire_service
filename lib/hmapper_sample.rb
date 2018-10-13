
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
    h[:send_date] = self.SendDate if self.SendDate
    h[:send_time] = self.SendTime if self.SendTime
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
    h[:categorh] = self.Category if self.Category
    h[:region] = self.Region if self.Urgency
    h[:class] = self.Class if self.Class
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

  def to_hash
    h = {}
    h[:title]     = self.Title if self.Title
    h[:subtitle]  = self.Subtitle if self.Subtitle
    h[:body]      = self.Body if self.Body
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
#

# news_content = NewsContent.parse(NewsContent_XML)
# puts news_content.Title
# puts news_content.Body

# ytm = YNewsML.parse(YTM_XML)
# puts ytm.to_hash
directory = File.dirname(__FILE__)
Dir.glob("#{directory}/*.xml").each do |f|
  xml = File.open(f, 'r'){|f| f.read}
  yml = YNewsML.parse(xml).to_hash.to_yaml
  puts yml
  # yml_path = f.sub(".xml", ".yml")
  # File.open(yml_path, 'w'){|f| f.write yml}
end


# describe YNewsML do
#   it "parses xml file" do
#     f = 
#     xml = File.open(f, 'r'){|f| f.read}
#     YNewsML.parse(xml).to_hash
#     parser = YNewsML.new(File.dirname(__FILE__) + '/sample.xml')
#     expect(parser.hash).to be_instance_of(Hash)
#     # expect(parser).to be_instance_of(Hash)
#   end
# end