class ItemFacade

  def self.item_show(item_id)
    Item.new(ItemService.item_info(item_id))
  end
end
