json.array!(@accessory_items) do |accessory_item|
  json.extract! accessory_item, :id, :accessory_id, :cart_id, :quantity
  json.url accessory_item_url(accessory_item, format: :json)
end
