class ItemService
  def self.connection
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.item_info(item_id)
    response = connection.get("api/v1/items/#{item_id}")
    JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
