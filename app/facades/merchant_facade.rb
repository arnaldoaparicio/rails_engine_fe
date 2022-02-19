class MerchantFacade
  
  def self.merchants
    json = MerchantService.all_merchants
    json.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.merchant_items(merchant_id)
    json = MerchantService.all_merchant_items(merchant_id)
    json.map do |item_data|
      Item.new(item_data)
    end
  end
end
