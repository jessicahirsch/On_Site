class HomeController < ApplicationController
  def index
    Session.create(:whatever => 'whatever')
  end
end
