json.extract! yh_article, :id, :date, :time, :category, :class_code, :source, :title, :body, :writer, :taken_by, :selected, :group, :page, :created_at, :updated_at
json.url yh_article_url(yh_article, format: :json)
