class Recipe < ActiveRecord::Base
	has_many :ingredients, :dependent => :destroy
	accepts_nested_attributes_for :ingredients
	mount_uploader :img, ImgUploader
end
