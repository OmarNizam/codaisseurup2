# app/uploaders/image_uploader.rb

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    eager  # do this at the momint when you uploade the photo
    resize_to_fit(300, 300)
    cloudinary_transformation :quality => 80
  end
end
