class HomeController < ApplicationController


  def main
    @user = current_user
    @categories = Forem::Category.all
  end
end
