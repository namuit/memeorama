json.array!(@memes) do |meme|
  json.extract! meme, :name, :description, :picture
  json.url meme_url(meme, format: :json)
end
