class ContentImage < ApplicationRecord
  mount_base64_uploader :name, FileupUploader
end
