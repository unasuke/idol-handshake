class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def qrcode
  end

  def input_serial
    @user = current_user
  end

  def handhake
    @user = current_user
  end

end
