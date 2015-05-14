json.array!(@articles) do |article|
  json.extract! article, :id, :name, :body, :event_date, :added_by
  json.url article_url(article, format: :json)
end
