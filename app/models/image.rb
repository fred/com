class Image < ActiveRecord::Base
  
  has_attachment :content_type => :image
  has_attachment :storage => :file_system
  has_attachment :max_size => 9.megabytes
  has_attachment :thumbnails => { :medium => [320, 320], :geometry => 'x50' }
  has_attachment :processor => 'MiniMagick'
  has_attachment :path_prefix => 'public/system/'
  
  validates_as_attachment
  
end
