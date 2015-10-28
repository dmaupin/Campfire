class Recipe < ActiveRecord::Base
	mount_uploader :img, ImgUploader
end
