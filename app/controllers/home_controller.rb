class HomeController < ApplicationController
  def index
    @menu = ["Customers","Contacts","Opportunities"]
  end

end
