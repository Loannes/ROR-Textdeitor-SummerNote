class Post < ApplicationRecord
  mount_base64_uploader :file, FileupUploader
end
