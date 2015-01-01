class TraumasController < ApplicationController

  def index
    @traumas = Trauma.all
  end

  def show
    @trauma = Trauma.find(params[:id])
  end

end
