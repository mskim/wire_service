json.extract! story, :id, :date, :reporter, :group, :title, :subtitle, :quote, :body, :char_count, :draft, :sent, :user_id, :page, :order, :path, :created_at, :updated_at
json.url story_url(story, format: :json)
