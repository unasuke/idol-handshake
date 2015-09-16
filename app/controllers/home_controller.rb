class Barcode

    require 'barby'
    require 'barby/barcode/ean_13'
    require 'barby/barcode/ean_8'
    require 'barby/outputter/png_outputter'

  def initialize(number, type = :ean_13)
    @number = number.to_s
    @type = type
  end

  # PNG形式でデータURIスキームを生成
  def to_png_image
    'data:image/png;base64, ' + Base64.encode64(Barby::PngOutputter.new(barcode(@type, @number)).to_png)
  end

  private
  def barcode(type, data)
    case type
    when :ean_13 # 13桁の場合
      Barby::EAN13.new(data)
    when :ean_8 # 8桁の場合
      Barby::EAN8.new(data)
    end
  end

end

class HomeController < ApplicationController
  def index
    @user = current_user
    @barcode = Barcode.new(100000000001)
  end
end
