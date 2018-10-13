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
