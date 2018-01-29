class UsersController < ApplicationController
  def index
    today = Date::DAYNAMES[Date.today.wday]
    puts today
    @date = today.downcase
    if admin_signed_in?
      @verify = true
    end
  end
end
