class Property < ApplicationRecord
    belongs_to :user
    mount_uploader :user_kra, UserKraUploader

end
