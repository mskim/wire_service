
require 'rspec/autorun'
require 'xmlsimple'
require 'awesome_print'


class YhArticleParser
    attr_accessor :hash, :header, :metadata, :news_content, :ref_content
    def initialize(xml)
        xml = File.open(xml){|f| f.read}
        @hash = XmlSimple.xml_in(xml)
        puts @hash.keys
        @hash.keys.each do |key|
            puts "+++++ #{key}"
            puts "#{@hash[key]}"
        end
        result = {}
        parse_header
        parse_metadata
        parse_news_content
        parse_ref_content


        result
    end

    def parse_header
        @header = @hash['Header']
        @header.each do |item|
            case item[0]
        end
        result[:content_id] = ['ContentID']
        result[:date] = @hash['Header']['SendDate']
        result[:time] = @hash['Header']['SendTime']

    end

    def parse_metadata
        @metadata = @hash['Metadata']

    end

    def parse_news_content

    end

    def parse_ref_content

    end
end


describe YhArticleParser do
  it "parses xml file" do
    parser = YhArticleParser.new(File.dirname(__FILE__) + '/sample.xml')
    expect(parser.hash).to be_instance_of(Hash)
    # expect(parser).to be_instance_of(Hash)
  end
end