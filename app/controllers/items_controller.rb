class ItemsController < ApplicationController
  def show
    @item = ItemFacade.item_show(params[:item_id])
  end
end
