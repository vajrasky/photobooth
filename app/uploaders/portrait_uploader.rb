# encoding: utf-8

class PortraitUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  process :capture_base64

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def default_url
  #   ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fill => [64, 64]
  end

  def original_base64
    data = model.send "#{mounted_as}_base64"
    "data:image/#{file.extension};base64,#{data}"
  end

  def capture_version_base64
    model.send "#{mounted_as}_#{version_name}_base64=", Base64.encode64(file.read)
  end

  def capture_base64
    model.send "#{mounted_as}_base64=", Base64.encode64(file.read)
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
