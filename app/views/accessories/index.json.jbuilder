json.array!(@accessories) do |accessory|
  json.extract! accessory, :id, :item, :platform, :description, :price, :stock
  json.url accessory_url(accessory, format: :json)
end
