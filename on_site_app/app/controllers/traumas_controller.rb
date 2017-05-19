class TraumasController < ApplicationController

  def index
    @traumas = Trauma.all
  end

  def show
    @trauma = Trauma.find(params[:id])
    # @trauma_item = TraumaItem.find_by(params[:id])
    @traumas_items = TraumaItem.all
    @first_aid_items = FirstAidItem.all
    # @first_aid_item = FirstAidItem.find(params[:id])
  end

end
