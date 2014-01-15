json.array!(@captions) do |caption|
  json.extract! caption, :sentence, :meme_id, :picture
  json.url caption_url(caption, format: :json)
end
