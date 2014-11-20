class Person < ActiveRecord::Base

  mount_uploader :portrait, PortraitUploader

  default_scope { order('position asc') }

  acts_as_list

end
