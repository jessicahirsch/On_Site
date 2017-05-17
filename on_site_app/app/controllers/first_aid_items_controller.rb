class FirstAidItemsController < ApplicationController

  def index
    @first_aid_items = FirstAidItem.all
  end

  def show
    @first_aid_item = FirstAidItem.find(params[:id])
  end

  def first_aid_items_param
    params.require(:first_aid_item).permit(:name, :instructions, :first_aid_item_id)
  end

end
