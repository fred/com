class Image < ActiveRecord::Base
  
  has_attachment :content_type => :image,
    :storage => :file_system,
    :max_size => 9.megabytes,
    :thumbnails => { :medium => '240>', :large => '750>' },
    :processor => 'MiniMagick',
    :path_prefix => 'public/system/'
  
  validates_as_attachment
  
end
