class YhArticle < ApplicationRecord

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
end
