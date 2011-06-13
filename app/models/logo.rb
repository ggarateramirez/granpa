class Logo < ActiveRecord::Base
  #belongs_to :album


  has_attachment :content_type => :image,
                 :storage      => :file_system,
                 :max_size     => 3072.kilobytes,
                 :resize_to    => '100x100>',
                 :thumbnails   => {:large => '50x50>', :small => '30x30>'}

  validates_as_attachment



end

