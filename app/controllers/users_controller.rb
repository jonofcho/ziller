class UsersController < ApplicationController
  def index
    today = Date::DAYNAMES[Date.today.wday]
    puts today
    @date = today.downcase
    @collections = Collection.all
  end
end
