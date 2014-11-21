# encoding: utf-8

require 'tempfile'

class CarrierStringIO < StringIO
  def original_filename
    "base64.png"
  end

  def content_type
    "image/png"
  end
end

class Person < ActiveRecord::Base

  mount_uploader :portrait, PortraitUploader

  validates :portrait_base64,
            :name,
            :sex,
            :division,
            :email,
            :phone_number, presence: true

  def portrait_base64= value
    super

    binary = Base64.decode64(value).force_encoding('UTF-8').encode
    io = CarrierStringIO.new binary
    self.portrait = io

  end

end
