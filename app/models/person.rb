class Person < ActiveRecord::Base

  mount_uploader :portrait, PortraitUploader

  validates :name,
            :sex,
            :division,
            :email,
            :phone_number, presence: true

end
