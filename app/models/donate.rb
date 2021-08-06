class Donate < ApplicationRecord
    has_rich_text :mainbody
    mount_uploader :donate_image, ImageUploader
end
